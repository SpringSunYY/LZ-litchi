package com.lz.framework.excel.core.util;

import cn.hutool.core.collection.CollUtil;
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
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/**
 * Excel 导入时的 i18n 表头 VO 类生成器
 * <p>
 * 核心职责：生成 i18n VO 子类，将 @ExcelI18n 字段的 @ExcelProperty value 替换为 i18n 翻译后的表头
 * <ul>
 *   <li>开启国际化：使用 i18n 翻译后的值作为表头</li>
 *   <li>关闭国际化：直接使用原始 VO</li>
 * </ul>
 *
 * @author lz
 */
@Slf4j
public class I18nClassUtils {

    /**
     * i18n VO 子类缓存：原始类 -> i18n 子类
     */
    private static final Map<Class<?>, Class<?>> CLASS_CACHE = new ConcurrentHashMap<>();

    /**
     * i18n 字段信息缓存：原始类 -> 字段信息列表
     */
    private static final Map<Class<?>, Map<String, I18nFieldInfo>> FIELD_INFO_CACHE = new ConcurrentHashMap<>();

    /**
     * 构建 i18n VO 类（将 @ExcelProperty value 替换为 i18n 翻译后的值）
     *
     * @param head 原始 VO 类
     * @param <T>  VO 类型
     * @return i18n VO 子类，如果无需国际化则返回原始类
     */
    @SuppressWarnings("unchecked")
    public static <T> Class<? extends T> buildI18nClass(Class<T> head) {
        // 先检查缓存
        Class<?> cached = CLASS_CACHE.get(head);
        if (cached != null) {
            return (Class<? extends T>) cached;
        }

        // 构建：i18n 翻译后的列头 -> 字段信息（带缓存）
        Map<String, I18nFieldInfo> i18nFieldInfos = FIELD_INFO_CACHE.computeIfAbsent(head, k -> buildI18nFieldInfos0(head));
        if (CollUtil.isEmpty(i18nFieldInfos)) {
            return head;
        }

        // 检查是否有实际翻译（翻译后的值和原始值不同）
        boolean hasTranslation = i18nFieldInfos.keySet().stream()
                .anyMatch(headStr -> !headStr.equals(i18nFieldInfos.get(headStr).originalValue()));
        if (!hasTranslation) {
            return head;
        }

        try {
            I18nClassGenerator generator = new I18nClassGenerator(head, i18nFieldInfos);
            Class<? extends T> result = (Class<? extends T>) generator.generate();
            CLASS_CACHE.put(head, result);
            return result;
        } catch (Exception e) {
            log.warn("[I18nClassUtils] generate i18n class failed: {}", e.getMessage());
            return head;
        }
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

    /**
     * 构建 i18n 字段信息列表（实际执行）
     */
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
            if (isIgnoreByExcelType(field, ExcelDirection.IMPORT)) {
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
        private final Map<Field, String> fieldToI18nHead = new LinkedHashMap<>();

        I18nClassGenerator(Class<?> original, Map<String, I18nFieldInfo> i18nFieldInfos) {
            this.original = original;
            this.i18nFieldInfos = i18nFieldInfos;
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

            // 构造函数
            MethodVisitor mv = cw.visitMethod(Opcodes.ACC_PUBLIC, "<init>", "()V", null, null);
            mv.visitCode();
            mv.visitVarInsn(Opcodes.ALOAD, 0);
            mv.visitMethodInsn(Opcodes.INVOKESPECIAL, superClassName, "<init>", "()V", false);
            mv.visitInsn(Opcodes.RETURN);
            mv.visitMaxs(1, 1);
            mv.visitEnd();

            // 遍历原始类的所有字段，生成 i18n shadow field
            for (Field field : original.getDeclaredFields()) {
                if (isStaticFinalOrTransient(field)) {
                    continue;
                }

                // 检查是否是 i18n 字段，生成 shadow field（覆盖父类的 @ExcelProperty）
                String i18nHead = fieldToI18nHead.get(field);
                if (i18nHead != null) {
                    String fieldName = field.getName();
                    String fieldDesc = getTypeDesc(field.getType());

                    // 生成 public shadow field，@ExcelProperty(value = { i18nHead })
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
                    || Modifier.isTransient(modifiers);
        }

        /**
         * 自定义 ClassLoader，用于加载动态生成的 i18n VO 子类
         */
        private static class I18nClassLoader extends ClassLoader {

            private final I18nClassGenerator generator;

            I18nClassLoader(ClassLoader parent, I18nClassGenerator generator) {
                super(parent);
                this.generator = generator;
            }

            /**
             * 加载 i18n VO 类字节码为 Class
             */
            public Class<?> loadClass(String name, byte[] bytecode) {
                return defineClass(name, bytecode, 0, bytecode.length);
            }

            public I18nClassGenerator getGenerator() {
                return generator;
            }
        }
    }
}
