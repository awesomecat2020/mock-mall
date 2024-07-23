package com.mockmall.generator.enmus;

/**
 * lombok 注解枚举
 *
 * @author ccomma
 */
public enum LombokAnnotationEnum {
    /**
     * Setter
     */
    SETTER("setter", false),
    /**
     * Getter
     */
    GETTER("getter", false),
    /**
     * Data
     */
    DATA("data", true),
    /**
     * Builder
     */
    BUILDER("builder", false),
    /**
     * AllArgsConstructor
     */
    ALL_ARGS_CONSTRUCTOR("allArgsConstructor", false),
    /**
     * NoArgsConstructor
     */
    NO_ARGS_CONSTRUCTOR("noArgsConstructor", false),
    /**
     * RequiredArgsConstructor
     */
    REQUIRED_ARGS_CONSTRUCTOR("requiredArgsConstructor", false),
    /**
     * EqualsAndHashCode
     */
    EQUALS_AND_HASH_CODE("equalsAndHashCode", true),
    /**
     * ToString
     */
    TO_STRING("toString", false),
    /**
     * NonNull
     */
    NON_NULL("nonNull", false);

    /**
     * 属性名
     */
    private final String propertyName;

    /**
     * 默认值
     */
    private final boolean defaultValue;

    LombokAnnotationEnum(String propertyName, boolean defaultValue) {
        this.propertyName = propertyName;
        this.defaultValue = defaultValue;
    }

    public boolean isDefaultValue() {
        return defaultValue;
    }

    public String getPropertyName() {
        return propertyName;
    }
}
