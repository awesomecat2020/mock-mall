package com.mock.mall.generator;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.generator.FastAutoGenerator;
import com.baomidou.mybatisplus.generator.config.OutputFile;

import java.sql.SQLException;
import java.util.Collections;

/**
 * 代码生成器
 *
 * @author awesomecat
 * @date 2022/5/27 0:12
 */
public class CodeGenerator {

    /** jdbc */
    private static final String JDBC_URL = "jdbc:mysql://127.0.0.1:3306/zdy_mybatis";

    /** username */
    private static final String USERNAME = "root";

    /** password */
    private static final String PASSWORD = "123456";

    /** 项目总路径 */
    private static final String PROJECT_PATH = "D:\\IDEA\\workspace\\item\\mock-mall\\mock-pms\\product-soa";

    /** 模块包名 */
    private static final String MODULE_NAME = "product";

    /** mapper */
    private static final String MAPPER = "mapper";

    /** entity */
    private static final String ENTITY = "model";

    /** xml */
    private static final String XML = "mapper";


    /**
     * 执行  run
     */
    public static void main(String[] args) throws SQLException {
        FastAutoGenerator.create(JDBC_URL, USERNAME, PASSWORD)
                .globalConfig(builder -> {
                    builder.author("ccomma") // 设置作者
                            .enableSwagger() // 开启 swagger 模式
                            .fileOverride() // 覆盖已生成文件
                            .outputDir(PROJECT_PATH + "\\src\\main\\java"); // 指定输出目录
                })
                .packageConfig(builder -> {
                    builder.parent("com.mock.mall") // 设置父包名
                            .moduleName(MODULE_NAME)
                            .mapper(MAPPER)
                            .entity(ENTITY)
                            .xml(XML)
                            .pathInfo(Collections.singletonMap(OutputFile.mapperXml, PROJECT_PATH + "\\src\\main\\resources\\mapper")); // 设置mapperXml生成路径
                })
                .strategyConfig(builder -> {
                    builder.addInclude("orders"); // 设置需要生成的表名
                    builder.entityBuilder()
                            // .superClass() // 设置父类
                            .enableLombok() // lombok
                            .enableRemoveIsPrefix() // Boolean 类型字段移除 is 前缀
                            .enableTableFieldAnnotation() // 生成实体时生成字段注解
                            // .logicDeleteColumnName("is_valid") // 逻辑删除字段名 (数据库)
                            // .logicDeletePropertyName("isValid") // 逻辑删除属性名 (实体)
                            .idType(IdType.INPUT) // 全局主键类型
                    ;
                })
                // 使用Freemarker引擎模板，默认的是Velocity引擎模板
                // .templateConfig(builder -> {
                //     builder.entity("/templates/entity.java")
                //             .service("/templates/service.java")
                //             .serviceImpl("/templates/serviceImpl.java")
                //             .mapper("/templates/mapper.java")
                //             .mapperXml("/templates/mapper.xml")
                //             .controller("/templates/controller.java");
                // })
                // .templateEngine(new FreemarkerTemplateEngine())
                .execute();

    }

}
