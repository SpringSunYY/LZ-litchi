package com.lz.framework.excel.core.util;

import com.alibaba.excel.annotation.ExcelIgnore;
import com.alibaba.excel.annotation.ExcelIgnoreUnannotated;
import com.alibaba.excel.annotation.ExcelProperty;
import com.alibaba.excel.support.asm.*;
import com.lz.framework.excel.core.annotations.ExcelDirection;
import com.lz.framework.excel.core.annotations.ExcelI18n;
import com.lz.framework.excel.core.annotations.ExcelType;
import com.lz.framework.common.util.i18n.I18nUtils;
import lombok.extern.slf4j.Slf4j;

import java.lang.reflect.Field;
import java.lang.reflect.Modifier;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Excel VO 类分析工具
 * <ul>
 *   <li>根据方向分析需要排除的字段名</li>
 *   <li>生成 i18n VO 子类，将 @ExcelI18n 字段的 @ExcelProperty value 替换为 i18n 翻译后的表头</li>
 * </ul>
 *
 * @author lz
 */
@Slf4j
public class ExcelClassUtils {

    /**
     * i18n VO 子类缓存：原始类 + direction -> i18n 子类
     */
    private static final Map<String, Class<?>> CLASS_CACHE = new ConcurrentHashMap<>();

    /**
     * i18n 字段信息缓存：原始类 -> 字段信息列表
     */
    private static final Map<Class<?>, Map<String, I18nFieldInfo>> FIELD_INFO_CACHE = new ConcurrentHashMap<>();

    /**
     * 根据方向计算需要排除的字段名
     *
     * @param head      头类
     * @param direction 方向：EXPORT=导出，IMPORT=导入
     * @return 需要排除的字段名集合
     */
    public static List<String> getExcludeColumnFiledNames(Class<?> head, ExcelDirection direction) {
        List<String> excludeFields = new java.util.ArrayList<>();
        boolean ignoreUnannotated = head.isAnnotationPresent(ExcelIgnoreUnannotated.class);

        for (Field field : head.getDeclaredFields()) {
            if (isStaticFinalOrTransient(field)) {
                continue;
            }
            if (field.isAnnotationPresent(ExcelIgnore.class)) {
                continue;
            }
            if (ignoreUnannotated && !field.isAnnotationPresent(ExcelProperty.class)) {
                continue;
            }

            ExcelType excelType = field.getAnnotation(ExcelType.class);
            if (excelType == null) {
                continue;
            }

            if (direction == ExcelDirection.ONLY_EXPORT && excelType.value() == ExcelDirection.ONLY_IMPORT) {
                excludeFields.add(field.getName());
            } else if (direction == ExcelDirection.ONLY_IMPORT && excelType.value() == ExcelDirection.ONLY_EXPORT) {
                excludeFields.add(field.getName());
            }
        }
        return excludeFields;
    }

    /**
     * 构建 i18n VO 类（将 @ExcelProperty value 替换为 i18n 翻译后的值，排除 direction 方向的字段）
     *
     * @param head      原始 VO 类
     * @param direction 方向：IMPORT=导入（排除 EXPORT 字段），EXPORT=导出（排除 IMPORT 字段）
     * @param <T>       VO 类型
     * @return i18n VO 子类，如果无需国际化则返回原始类
     */
    @SuppressWarnings("unchecked")
    public static <T> Class<? extends T> buildI18nClass(Class<T> head, ExcelDirection direction) {
        String cacheKey = head.getName() + "_" + direction;
        Class<?> cached = CLASS_CACHE.get(cacheKey);
        if (cached != null) {
            return (Class<? extends T>) cached;
        }

        List<String> excludeFields = getExcludeColumnFiledNames(head, direction);
        Map<String, I18nFieldInfo> i18nFieldInfos = FIELD_INFO_CACHE.computeIfAbsent(head, k -> buildI18nFieldInfos0(head));
        boolean hasTranslation = !i18nFieldInfos.isEmpty() && i18nFieldInfos.keySet().stream()
                .anyMatch(headStr -> !headStr.equals(i18nFieldInfos.get(headStr).originalValue()));

        if (!hasTranslation && excludeFields.isEmpty()) {
            return head;
        }

        try {
            I18nClassGenerator generator = new I18nClassGenerator(head, i18nFieldInfos, excludeFields);
            Class<? extends T> result = (Class<? extends T>) generator.generate();
            CLASS_CACHE.put(cacheKey, result);
            return result;
        } catch (Exception e) {
            log.warn("[ExcelClassUtils] generate i18n class failed: {}", e.getMessage());
            return head;
        }
    }

    /**
     * 构建 i18n VO 类（默认 IMPORT 方向）
     */
    public static <T> Class<? extends T> buildI18nClass(Class<T> head) {
        return buildI18nClass(head, ExcelDirection.ONLY_IMPORT);
    }

    /**
     * 清除缓存（当国际化配置变更时调用）
     */
    public static void clearCache() {
        CLASS_CACHE.clear();
        FIELD_INFO_CACHE.clear();
    }

    /**
     * i18n 字段信息：i18n 翻译后的列头 -> 原始字段
     */
    private record I18nFieldInfo(Field field, String originalValue) {}

    private static Map<String, I18nFieldInfo> buildI18nFieldInfos0(Class<?> head) {
        Map<String, I18nFieldInfo> map = new LinkedHashMap<>();
        boolean ignoreUnannotated = head.isAnnotationPresent(ExcelIgnoreUnannotated.class);

        for (Field field : head.getDeclaredFields()) {
            if (isStaticFinalOrTransient(field)) {
                continue;
            }
            if ((ignoreUnannotated && !field.isAnnotationPresent(ExcelProperty.class))
                    || field.isAnnotationPresent(ExcelIgnore.class)) {
                continue;
            }
            if (isIgnoreByExcelType(field, ExcelDirection.ONLY_IMPORT)) {
                continue;
            }

            ExcelProperty excelProperty = field.getAnnotation(ExcelProperty.class);
            if (excelProperty == null || excelProperty.index() != -1) {
                continue;
            }

            ExcelI18n excelI18n = field.getAnnotation(ExcelI18n.class);
            if (excelI18n != null) {
                String i18nValue = I18nUtils.getMessage(excelI18n.i18nKey());
                String originalValue = excelProperty.value().length > 0 ? excelProperty.value()[0] : "";
                if (i18nValue != null && !i18nValue.equals(originalValue)) {
                    map.put(i18nValue, new I18nFieldInfo(field, originalValue));
                }
            }
        }
        return map;
    }

    private static boolean isStaticFinalOrTransient(Field field) {
        int modifiers = field.getModifiers();
        return (Modifier.isStatic(modifiers) && Modifier.isFinal(modifiers))
                || Modifier.isTransient(modifiers);
    }

    private static boolean isIgnoreByExcelType(Field field, ExcelDirection excludeType) {
        ExcelType excelType = field.getAnnotation(ExcelType.class);
        if (excelType == null) {
            return false;
        }
        return excelType.value() == excludeType;
    }

    /**
     * i18n VO 子类字节码生成器
     */
    private static class I18nClassGenerator {

        private final Class<?> original;
        private final Map<String, I18nFieldInfo> i18nFieldInfos;
        private final List<String> excludeFields;
        private final Map<Field, String> fieldToI18nHead = new LinkedHashMap<>();

        I18nClassGenerator(Class<?> original, Map<String, I18nFieldInfo> i18nFieldInfos,
                           List<String> excludeFields) {
            this.original = original;
            this.i18nFieldInfos = i18nFieldInfos;
            this.excludeFields = excludeFields;
            for (Map.Entry<String, I18nFieldInfo> entry : i18nFieldInfos.entrySet()) {
                fieldToI18nHead.put(entry.getValue().field(), entry.getKey());
            }
        }

        Class<?> generate() throws Exception {
            String className = original.getName() + "_I18nImport";
            byte[] bytecode = generateBytecode(className);
            I18nClassLoader classLoader = new I18nClassLoader(original.getClassLoader(), this);
            return classLoader.loadClass(className, bytecode);
        }

        byte[] generateBytecode(String className) {
            ClassWriter cw = new ClassWriter(ClassWriter.COMPUTE_FRAMES);
            String superClassName = original.getName().replace('.', '/');

            cw.visit(Opcodes.V1_8, Opcodes.ACC_SUPER + Opcodes.ACC_PUBLIC,
                    className.replace('.', '/'), null, superClassName, null);

            MethodVisitor mv = cw.visitMethod(Opcodes.ACC_PUBLIC, "<init>", "()V", null, null);
            mv.visitCode();
            mv.visitVarInsn(Opcodes.ALOAD, 0);
            mv.visitMethodInsn(Opcodes.INVOKESPECIAL, superClassName, "<init>", "()V", false);
            mv.visitInsn(Opcodes.RETURN);
            mv.visitMaxs(1, 1);
            mv.visitEnd();

            // 遍历原始类的所有字段，生成 shadow field
            for (Field field : original.getDeclaredFields()) {
                if (isStaticFinalOrTransient(field)) {
                    continue;
                }

                String i18nHead = fieldToI18nHead.get(field);
                if (excludeFields.contains(field.getName())) {
                    // 生成带 @ExcelIgnore 的 shadow field，EasyExcel 会跳过此字段
                    String fieldName = field.getName();
                    String fieldDesc = getTypeDesc(field.getType());
                    FieldVisitor sfv = cw.visitField(Opcodes.ACC_PUBLIC, fieldName, fieldDesc, null, null);
                    sfv.visitAnnotation("Lcom/alibaba/excel/annotation/ExcelIgnore;", true);
                    sfv.visitEnd();
                } else if (i18nHead != null) {
                    // 生成带 i18n 表头的 shadow field（覆盖父类的 @ExcelProperty）
                    String fieldName = field.getName();
                    String fieldDesc = getTypeDesc(field.getType());
                    FieldVisitor sfv = cw.visitField(Opcodes.ACC_PUBLIC, fieldName, fieldDesc, null, null);
                    AnnotationVisitor av = sfv.visitAnnotation("Lcom/alibaba/excel/annotation/ExcelProperty;", true);
                    AnnotationVisitor avValue = av.visitArray("value");
                    avValue.visit(null, i18nHead);
                    avValue.visitEnd();
                    av.visitEnd();
                    sfv.visitEnd();
                }
            }

            cw.visitEnd();
            return cw.toByteArray();
        }

        private String getTypeDesc(Class<?> type) {
            if (type == int.class) return "I";
            if (type == long.class) return "J";
            if (type == double.class) return "D";
            if (type == float.class) return "F";
            if (type == boolean.class) return "Z";
            if (type == byte.class) return "B";
            if (type == char.class) return "C";
            if (type == short.class) return "S";
            if (type.isArray()) return "[" + getTypeDesc(type.getComponentType());
            return "L" + type.getName().replace('.', '/') + ";";
        }

        private static boolean isStaticFinalOrTransient(Field field) {
            int modifiers = field.getModifiers();
            return (Modifier.isStatic(modifiers) && Modifier.isFinal(modifiers))
                    || Modifier.isTransient(field.getModifiers());
        }

        private static class I18nClassLoader extends ClassLoader {

            private final I18nClassGenerator generator;

            I18nClassLoader(ClassLoader parent, I18nClassGenerator generator) {
                super(parent);
                this.generator = generator;
            }

            public Class<?> loadClass(String name, byte[] bytecode) {
                return defineClass(name, bytecode, 0, bytecode.length);
            }

            public I18nClassGenerator getGenerator() {
                return generator;
            }
        }
    }
}
