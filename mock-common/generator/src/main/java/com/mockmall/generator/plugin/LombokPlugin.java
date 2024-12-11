package com.mockmall.generator.plugin;

import com.mockmall.generator.enmus.LombokAnnotationEnum;
import org.mybatis.generator.api.IntrospectedColumn;
import org.mybatis.generator.api.IntrospectedTable;
import org.mybatis.generator.api.PluginAdapter;
import org.mybatis.generator.api.dom.java.Method;
import org.mybatis.generator.api.dom.java.TopLevelClass;

import java.util.List;

/**
 * generator lombok 插件
 *
 * @author ccomma
 */
public class LombokPlugin extends PluginAdapter {

    @Override
    public boolean validate(List<String> list) {
        return true;
    }

    @Override
    public boolean modelBaseRecordClassGenerated(TopLevelClass topLevelClass, IntrospectedTable introspectedTable) {
        for (LombokAnnotationEnum annotationEnum : LombokAnnotationEnum.values()) {
            String valueString = properties.getProperty(annotationEnum.getPropertyName());

            // if null -> defaultValue
            if (valueString == null || valueString.trim().isEmpty()) {
                valueString = String.valueOf(annotationEnum.isDefaultValue());
            }

            if (!Boolean.parseBoolean(valueString)) {
                continue;
            }

            // 添加注解
            String annotationName = annotationEnum.getPropertyName().substring(0, 1).toUpperCase() + annotationEnum.getPropertyName().substring(1);
            if (annotationEnum == LombokAnnotationEnum.EQUALS_AND_HASH_CODE) {
                topLevelClass.addAnnotation(String.format("@%s(callSuper = true)", annotationName));
            } else {
                topLevelClass.addAnnotation("@" + annotationName);
            }
            topLevelClass.addImportedType("lombok." + annotationName);
        }

        return true;
    }

    /**
     * 不添加 set 方法
     *
     * @author ccomma
     */
    @Override
    public boolean modelSetterMethodGenerated(Method method, TopLevelClass topLevelClass, IntrospectedColumn introspectedColumn, IntrospectedTable introspectedTable, ModelClassType modelClassType) {
        return false;
    }

    /**
     * 不添加 get 方法
     *
     * @author ccomma
     */
    @Override
    public boolean modelGetterMethodGenerated(Method method, TopLevelClass topLevelClass, IntrospectedColumn introspectedColumn, IntrospectedTable introspectedTable, ModelClassType modelClassType) {
        return false;
    }
}
