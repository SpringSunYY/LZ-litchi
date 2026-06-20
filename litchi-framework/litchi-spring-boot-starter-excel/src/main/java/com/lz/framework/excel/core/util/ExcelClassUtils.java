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
import java.util.ArrayList;
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
        List<String> excludeFields = new ArrayList<>();
        boolean ignoreUnannotated = head.isAnnotationPresent(ExcelIgnoreUnannotated.class);

        for (Field field : head.getDeclaredFields()) {
            // 静态、常量、 transient
            if (isStaticFinalOrTransient(field)) {
                continue;
            }
            // 判断是否忽略
            if (field.isAnnotationPresent(ExcelIgnore.class)) {
                continue;
            }
            // 判断是否忽略
            if (ignoreUnannotated && !field.isAnnotationPresent(ExcelProperty.class)) {
                continue;
            }

            // 判断是否忽略
            ExcelType excelType = field.getAnnotation(ExcelType.class);
            if (excelType == null) {
                continue;
            }

            if (direction == ExcelDirection.ONLY_EXPORT
                    && excelType.value() == ExcelDirection.ONLY_IMPORT) {
                excludeFields.add(field.getName());
            } else if (direction == ExcelDirection.ONLY_IMPORT
                    && excelType.value() == ExcelDirection.ONLY_EXPORT) {
                excludeFields.add(field.getName());
            }
        }
        return excludeFields;
    }

    /**
     * 构建 i18n VO 子类——将 {@link ExcelProperty} 的 value 替换为 i18n 翻译后的文本，
     * 并排除与当前方向相反的字段
     * <p>
     * 子类通过 ASM 动态生成，继承原始 VO 类，利用 shadow field 覆盖父类注解，
     * 避免修改原始字节码，对 EasyExcel 完全透明。
     * <p>
     * 结果会按 {@code 原始类名_direction} 缓存，重复调用直接返回缓存值。
     *
     * @param head      原始 VO 类
     * @param direction 操作方向：{@code ONLY_IMPORT} 导入时排除导出字段，
     *                  {@code ONLY_EXPORT} 导出时排除导入字段
     * @param <T>       VO 类型
     * @return i18n VO 子类；若无需国际化且无排除字段，直接返回原始类；
     *         生成失败时降级返回原始类
     */
    @SuppressWarnings("unchecked")
    public static <T> Class<? extends T> buildI18nClass(Class<T> head, ExcelDirection direction) {
        String cacheKey = head.getName() + "_" + direction;
        Class<?> cached = CLASS_CACHE.get(cacheKey);
        if (cached != null) {
            return (Class<? extends T>) cached;
        }

        List<String> excludeFields = getExcludeColumnFiledNames(head, direction);
        Map<String, I18nFieldInfo> i18nFieldInfos = FIELD_INFO_CACHE.computeIfAbsent(head,
                k -> buildI18nFieldInfos0(head));

        // 检查是否存在实际需要翻译的字段（翻译值与原值不同）
        boolean hasTranslation = !i18nFieldInfos.isEmpty() && i18nFieldInfos.keySet().stream()
                .anyMatch(headStr -> !headStr.equals(i18nFieldInfos.get(headStr).originalValue()));

        // 无需翻译且无方向排除字段时，直接返回原始类，跳过字节码生成
        if (!hasTranslation && excludeFields.isEmpty()) {
            return head;
        }

        try {
            I18nClassGenerator generator = new I18nClassGenerator(head, i18nFieldInfos, excludeFields);
            Class<? extends T> result = (Class<? extends T>) generator.generate();
            CLASS_CACHE.put(cacheKey, result);
            return result;
        } catch (Exception e) {
            // 生成失败时降级返回原始类，不影响业务正常运行
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

    /**
     * 扫描指定VO类的所有字段，收集需要进行i18n国际化替换的列头信息
     * <p>
     * 仅收集同时满足以下条件的字段：
     * <ul>
     *   <li>非static final、非transient字段</li>
     *   <li>未被{@link ExcelIgnore}或{@link ExcelIgnoreUnannotated}排除</li>
     *   <li>未被{@link ExcelType}标记为ONLY_IMPORT</li>
     *   <li>标注了{@link ExcelProperty}且未指定index（即按名称匹配列）</li>
     *   <li>标注了{@link ExcelI18n}且i18n翻译值与原始列头值不同</li>
     * </ul>
     *
     * @param head 待扫描的Excel VO类
     * @return 以i18n翻译后的列头为key、{@link I18nFieldInfo}为value的有序Map；
     *         若无需要国际化的字段，返回空Map
     */
    private static Map<String, I18nFieldInfo> buildI18nFieldInfos0(Class<?> head) {
        Map<String, I18nFieldInfo> map = new LinkedHashMap<>();
        boolean ignoreUnannotated = head.isAnnotationPresent(ExcelIgnoreUnannotated.class);

        for (Field field : head.getDeclaredFields()) {
            // 过滤static final和transient字段
            if (isStaticFinalOrTransient(field)) {
                continue;
            }
            // 过滤被忽略或未标注@ExcelProperty的字段
            if ((ignoreUnannotated && !field.isAnnotationPresent(ExcelProperty.class))
                    || field.isAnnotationPresent(ExcelIgnore.class)) {
                continue;
            }
            // 过滤仅导入方向的字段
            if (isIgnoreByExcelType(field, ExcelDirection.ONLY_IMPORT)) {
                continue;
            }

            // 仅处理按名称匹配列的字段（排除index索引匹配的字段）
            ExcelProperty excelProperty = field.getAnnotation(ExcelProperty.class);
            if (excelProperty == null || excelProperty.index() != -1) {
                continue;
            }

            // 收集i18n翻译值与原始值不同的字段
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


    /**
     * 判断字段是否为静态常量或transient字段，这些字段不参与Excel序列化
     *
     * @param field 待检查的字段对象
     * @return 若字段为static final修饰的编译期常量，或为transient修饰的字段，返回true；
     *         否则返回false
     */
    private static boolean isStaticFinalOrTransient(Field field) {
        int modifiers = field.getModifiers();
        return (Modifier.isStatic(modifiers) && Modifier.isFinal(modifiers))
                || Modifier.isTransient(modifiers);
    }

    /**
     * 根据{@link ExcelType}注解判断字段在指定Excel操作方向下是否需要忽略
     *
     * @param field       待检查的字段对象
     * @param excludeType 当前操作的Excel方向（导入或导出）
     * @return 若字段标注了{@link ExcelType}注解且其值与excludeType一致，返回true；
     *         若未标注该注解或注解值不匹配，返回false
     */
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

        /**
         * 生成i18n VO子类：使用ASM动态生成字节码，通过自定义ClassLoader加载为Class对象
         * <p>
         * 子类命名规则为 {@code 原类名_I18nImport}，继承原始VO类，
         * 通过shadow field覆盖父类的{@link ExcelProperty}注解值为i18n翻译文本
         *
         * @return 动态生成并加载的i18n VO子类
         * @throws Exception 字节码生成或类加载失败时抛出
         */
        Class<?> generate() throws Exception {
            String className = original.getName() + "_I18nImport";
            byte[] bytecode = generateBytecode(className);
            I18nClassLoader classLoader = new I18nClassLoader(original.getClassLoader(), this);
            return classLoader.loadClass(className, bytecode);
        }

        /**
         * 使用ASM动态生成i18n VO子类的字节码
         * <p>
         * 生成的子类继承原始VO类，通过声明同名字段（shadow field）覆盖父类注解：
         * <ul>
         *   <li>需排除的字段 → 添加 {@code @ExcelIgnore} 注解</li>
         *   <li>需i18n翻译的字段 → 替换 {@code @ExcelProperty} 的value为翻译后文本</li>
         *   <li>其余字段 → 不生成shadow field，复用父类定义</li>
         * </ul>
         *
         * @param className 待生成的子类全限定名
         * @return 编译后的字节码数组
         */
        byte[] generateBytecode(String className) {
            ClassWriter cw = new ClassWriter(ClassWriter.COMPUTE_FRAMES);
            String superClassName = original.getName().replace('.', '/');

            cw.visit(Opcodes.V1_8, Opcodes.ACC_SUPER + Opcodes.ACC_PUBLIC,
                    className.replace('.', '/'), null, superClassName, null);

            // 生成无参构造方法，直接调用父类构造器
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
