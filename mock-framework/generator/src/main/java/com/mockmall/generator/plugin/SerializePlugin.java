package com.mockmall.generator.plugin;

import org.mybatis.generator.api.IntrospectedTable;
import org.mybatis.generator.api.PluginAdapter;
import org.mybatis.generator.api.dom.java.AbstractJavaType;
import org.mybatis.generator.api.dom.java.Field;
import org.mybatis.generator.api.dom.java.FullyQualifiedJavaType;
import org.mybatis.generator.api.dom.java.JavaVisibility;
import org.mybatis.generator.api.dom.java.TopLevelClass;

import java.io.Serializable;
import java.util.List;
import java.util.Objects;
import java.util.Optional;
import java.util.Set;

/**
 * 序列化插件
 *
 * @author ccomma
 */
public class SerializePlugin extends PluginAdapter {

    private static final String SERIALIZABLE_PACKAGE_NAME = "java.io.Serializable";

    @Override
    public boolean validate(List<String> warnings) {
        return true;
    }

    @Override
    public boolean modelBaseRecordClassGenerated(TopLevelClass topLevelClass, IntrospectedTable introspectedTable) {
        boolean needImplementSerialize = this.isNeedImplementSerialize(topLevelClass);

        // 若还没序列化，则实现 Serializable 接口
        if (needImplementSerialize) {
            topLevelClass.addSuperInterface(new FullyQualifiedJavaType(SERIALIZABLE_PACKAGE_NAME));
            topLevelClass.addImportedType(SERIALIZABLE_PACKAGE_NAME);
        }

        // 生成 serialVersionUID 字段
        Class<AbstractJavaType> topLevelClassClazz = AbstractJavaType.class;
        try {
            java.lang.reflect.Field fields = topLevelClassClazz.getDeclaredField("fields");
            fields.setAccessible(true);
            List<Field> fieldList = (List<Field>) fields.get(topLevelClass);
            fieldList.add(0, buildSerialVersionUidField());
        } catch (NoSuchFieldException e) {
            throw new RuntimeException(e);
        } catch (IllegalAccessException e) {
            throw new RuntimeException(e);
        }

        return true;
    }

    /**
     * 是否需要实现 序列化接口
     */
    private boolean isNeedImplementSerialize(TopLevelClass topLevelClass) {
        Optional<FullyQualifiedJavaType> superClass = topLevelClass.getSuperClass();

        // 父类已序列化
        if (superClass.isPresent()) {
            try {
                Class<?> clazz = Class.forName(superClass.get().getFullyQualifiedName());
                if (Serializable.class.isAssignableFrom(clazz)) {
                    return false;
                }
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }

        // 已实现 Serializable
        Set<FullyQualifiedJavaType> superInterfaceTypes = topLevelClass.getSuperInterfaceTypes();
        for (FullyQualifiedJavaType superInterfaceType : superInterfaceTypes) {
            if (Objects.equals(superInterfaceType.getFullyQualifiedName(), SERIALIZABLE_PACKAGE_NAME)) {
                return false;
            }
        }

        return true;
    }

    /**
     * 创建 serialVersionUID 字段
     */
    private Field buildSerialVersionUidField() {
        Field field = new Field("serialVersionUID", new FullyQualifiedJavaType("java.lang.long"));
        field.setVisibility(JavaVisibility.PRIVATE);
        field.setStatic(true);
        field.setFinal(true);
        field.setInitializationString("1L");
        return field;
    }

}
