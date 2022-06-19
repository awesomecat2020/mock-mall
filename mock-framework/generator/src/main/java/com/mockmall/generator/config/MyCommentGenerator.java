package com.mockmall.generator.config;

import org.mybatis.generator.api.CommentGenerator;
import org.mybatis.generator.api.IntrospectedColumn;
import org.mybatis.generator.api.IntrospectedTable;
import org.mybatis.generator.api.dom.java.CompilationUnit;
import org.mybatis.generator.api.dom.java.Field;
import org.mybatis.generator.api.dom.java.FullyQualifiedJavaType;
import org.mybatis.generator.api.dom.java.InnerClass;
import org.mybatis.generator.api.dom.java.JavaElement;
import org.mybatis.generator.api.dom.java.Method;
import org.mybatis.generator.api.dom.java.Parameter;
import org.mybatis.generator.api.dom.java.TopLevelClass;
import org.mybatis.generator.api.dom.xml.XmlElement;
import org.mybatis.generator.config.PropertyRegistry;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Properties;
import java.util.Set;

/**
 * 自定义注释
 *
 * @author ccomma
 */
public class MyCommentGenerator implements CommentGenerator {

    private static final String AUTHOR = "author";
    private final Properties properties = new Properties();
    /**
     * 是否不生成时间
     */
    private boolean suppressDate;
    /**
     * 是否不生成全部注释
     */
    private boolean suppressAllComments;
    /**
     * 作者名
     */
    private String author;
    /**
     * 当前时间
     */
    private final String nowTime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").format(new Date());

    /**
     * 创建生成器时会调用
     */
    @Override
    public void addConfigurationProperties(Properties properties) {
        this.properties.putAll(properties);
        suppressDate = Boolean.parseBoolean(properties.getProperty(PropertyRegistry.COMMENT_GENERATOR_SUPPRESS_DATE));
        suppressAllComments = Boolean.parseBoolean(properties.getProperty(PropertyRegistry.COMMENT_GENERATOR_SUPPRESS_ALL_COMMENTS));
        author = properties.getProperty(AUTHOR);
    }

    /**
     * java 类的文件注释（包括实体类和 mapper），不暴露超类及表数据
     */
    @Override
    public void addJavaFileComment(CompilationUnit compilationUnit) {
    }

    /**
     * domain 类注释
     */
    @Override
    public void addModelClassComment(TopLevelClass topLevelClass, IntrospectedTable introspectedTable) {
        this.modelClassComment(topLevelClass, introspectedTable.getFullyQualifiedTable().getDomainObjectName());
    }

    @Override
    public void addClassAnnotation(InnerClass innerClass, IntrospectedTable introspectedTable, Set<FullyQualifiedJavaType> imports) {
        CommentGenerator.super.addClassAnnotation(innerClass, introspectedTable, imports);
    }

    /**
     * 类的注释
     */
    @Override
    public void addClassComment(InnerClass innerClass, IntrospectedTable introspectedTable, boolean markAsDoNotDelete) {
        this.modelClassComment(innerClass, introspectedTable.getFullyQualifiedTable().getDomainObjectName());
    }

    @Override
    public void addClassComment(InnerClass innerClass, IntrospectedTable introspectedTable) {
        this.modelClassComment(innerClass, introspectedTable.getFullyQualifiedTable().getDomainObjectName());
    }

    /**
     * 设置字段注释
     */
    @Override
    public void addFieldComment(Field field, IntrospectedTable introspectedTable, IntrospectedColumn introspectedColumn) {
        this.fieldComment(field, introspectedColumn.getRemarks());
    }

    @Override
    public void addFieldComment(Field field, IntrospectedTable introspectedTable) {
        this.fieldComment(field, introspectedTable.getFullyQualifiedTable().toString());
    }

    /**
     * 设置setter方法注释
     */
    @Override
    public void addSetterComment(Method method, IntrospectedTable introspectedTable,
                                 IntrospectedColumn introspectedColumn) {
        if (suppressAllComments) {
            return;
        }

        method.addJavaDocLine("/**");
        method.addJavaDocLine(" * " + introspectedColumn.getRemarks());
        method.addJavaDocLine(" * ");
        Parameter parm = method.getParameters().get(0);
        method.addJavaDocLine(String.format(" * @param %s %s", parm.getName(), introspectedColumn.getRemarks()));
        this.addAuthorComment(method);
        this.addDateComment(method);
        method.addJavaDocLine(" */");
    }

    /**
     * 设置getter方法注释
     */
    @Override
    public void addGetterComment(Method method, IntrospectedTable introspectedTable,
                                 IntrospectedColumn introspectedColumn) {
        if (suppressAllComments) {
            return;
        }
        method.addJavaDocLine("/**");
        method.addJavaDocLine(" * " + introspectedColumn.getRemarks());
        method.addJavaDocLine(" * ");
        method.addJavaDocLine(String.format(" * @return %s", introspectedColumn.getRemarks()));
        this.addAuthorComment(method);
        this.addDateComment(method);
        method.addJavaDocLine(" */");
    }

    @Override
    public void addComment(XmlElement xmlElement) {
        return;
    }

    @Override
    public void addRootComment(XmlElement rootElement) {
        return;
    }

    @Override
    public void addGeneralMethodComment(Method method, IntrospectedTable introspectedTable) {
        if (suppressAllComments) {
            return;
        }

        method.addJavaDocLine("/**");

        switch (method.getName()) {
            case "selectByPrimaryKey":
                this.selectByIdMethodComment(method);
                break;
            case "selectAll":
                this.selectAllMethodComment(method);
                break;
            case "insert":
            case "insertSelective":
                this.insertMethodComment(method, introspectedTable);
                break;
            case "updateByPrimaryKeySelective":
            case "updateByPrimaryKey":
                this.updateMethodComment(method, introspectedTable);
                break;
            case "deleteByPrimaryKey":
                this.deleteByIdMethodComment(method);
                break;
            default:
                break;
        }

        this.addAuthorComment(method);
        this.addDateComment(method);
        method.addJavaDocLine(" */");
    }

    /**
     * domain 类注释
     *
     * @author ccomma
     */
    private void modelClassComment(JavaElement javaElement, String content) {
        if (suppressAllComments) {
            return;
        }

        javaElement.addJavaDocLine("/**");
        javaElement.addJavaDocLine(" * " + content);
        javaElement.addJavaDocLine(" * ");
        this.addAuthorComment(javaElement);
        this.addDateComment(javaElement);
        javaElement.addJavaDocLine(" */");
    }

    /**
     * domain 字段注释
     *
     * @author ccomma
     */
    private void fieldComment(Field field, String context) {
        if (suppressAllComments) {
            return;
        }

        field.addJavaDocLine("/**");
        field.addJavaDocLine(" * " + context);
        field.addJavaDocLine(" */");
    }

    /**
     * javaMapper 通过主键查询方法注释
     *
     * @author ccomma
     */
    private void selectByIdMethodComment(Method method) {
        method.addJavaDocLine(" * 根据主键查询");
        method.addJavaDocLine(" * ");
        method.addJavaDocLine(" * @param id 主键");
        method.getReturnType().ifPresent(type -> method.addJavaDocLine(" * @return " + type.getShortName().toLowerCase()));
    }

    /**
     * javaMapper 查询全部方法注释
     *
     * @author ccomma
     */
    private void selectAllMethodComment(Method method) {
        method.addJavaDocLine(" * 查询全部");
        method.addJavaDocLine(" * ");
        method.getReturnType().ifPresent(type -> method.addJavaDocLine(String.format(" * @return {@code %s}", type.getShortName())));
    }

    /**
     * javaMapper 新增方法注释
     *
     * @author ccomma
     */
    private void insertMethodComment(Method method, IntrospectedTable introspectedTable) {
        method.addJavaDocLine(" * 新增");
        method.addJavaDocLine(" * ");
        method.addJavaDocLine(String.format(" * @param %s %s", method.getParameters().get(0).getName(), introspectedTable.getFullyQualifiedTable()));
        method.addJavaDocLine(" * @return 影响条数");
    }

    /**
     * javaMapper 更新方法注释
     *
     * @author ccomma
     */
    private void updateMethodComment(Method method, IntrospectedTable introspectedTable) {
        method.addJavaDocLine(" * 根据主键更新");
        method.addJavaDocLine(" * ");
        method.addJavaDocLine(String.format(" * @param %s %s", method.getParameters().get(0).getName(), introspectedTable.getFullyQualifiedTable()));
        method.addJavaDocLine(" * @return 影响条数");
    }

    /**
     * javaMapper 删除方法注释
     *
     * @author ccomma
     */
    private void deleteByIdMethodComment(Method method) {
        method.addJavaDocLine(" * 根据主键删除");
        method.addJavaDocLine(" * ");
        method.addJavaDocLine(" * @param id 主键");
        method.addJavaDocLine(" * @return 影响条数");
    }

    /**
     * 添加作者注释
     *
     * @author ccomma
     */
    private void addAuthorComment(JavaElement javaElement) {
        if (author != null && author.trim().length() > 0) {
            javaElement.addJavaDocLine(String.format(" * @author %s", properties.getProperty(AUTHOR)));
        }
    }

    /**
     * 添加时间注释
     *
     * @author ccomma
     */
    private void addDateComment(JavaElement javaElement) {
        if (!suppressDate) {
            javaElement.addJavaDocLine(String.format(" * @date %s", nowTime));
        }
    }

}
