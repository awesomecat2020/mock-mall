package com.mockmall.generator.config;

import org.mybatis.generator.api.MyBatisGenerator;
import org.mybatis.generator.api.ShellRunner;
import org.mybatis.generator.config.Configuration;
import org.mybatis.generator.config.xml.ConfigurationParser;
import org.mybatis.generator.internal.DefaultShellCallback;

import java.io.File;
import java.util.ArrayList;

import static org.mybatis.generator.internal.util.messages.Messages.getString;

/**
 * 手动运行
 *
 * @author ccomma
 * @see ShellRunner
 */
public class DebugRunner {

    private static final String CONFIG_FILE = "D:\\IDEA\\workspace\\item\\mock-mall\\mock-framework\\generator\\src\\main\\resources\\generatorConfig.xml";

    public static void main(String[] args) {
        File configurationFile = new File(CONFIG_FILE);

        ArrayList<String> warnings = new ArrayList<>();

        try {
            ConfigurationParser cp = new ConfigurationParser(warnings);
            Configuration config = cp.parseConfiguration(configurationFile);

            DefaultShellCallback shellCallback = new DefaultShellCallback(false);

            MyBatisGenerator myBatisGenerator = new MyBatisGenerator(config, shellCallback, warnings);

            myBatisGenerator.generate(null, null, null);
        } catch (Exception e) {
            e.printStackTrace();
        }

        for (String warning : warnings) {
            writeLine(warning);
        }

        if (warnings.isEmpty()) {
            writeLine(getString("Progress.4"));
        } else {
            writeLine();
            writeLine(getString("Progress.5"));
        }
    }

    private static void writeLine(String message) {
        System.out.println(message);
    }

    private static void writeLine() {
        System.out.println();
    }

}
