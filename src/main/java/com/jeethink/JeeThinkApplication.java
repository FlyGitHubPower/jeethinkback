package com.jeethink;

import com.jeethink.common.utils.IdWorker;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.jdbc.DataSourceAutoConfiguration;
import org.springframework.boot.builder.SpringApplicationBuilder;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
import org.springframework.context.annotation.Bean;

/**
 * 启动程序
 * 
 * @author 世舆  官方网址
 */
@SpringBootApplication(exclude = { DataSourceAutoConfiguration.class })
public class JeeThinkApplication extends SpringBootServletInitializer {
    @Override
    protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
        return application.sources(JeeThinkApplication.class);
    }


    public static void main(String[] args)
    {
        // System.setProperty("spring.devtools.restart.enabled", "false");
        SpringApplication.run(JeeThinkApplication.class, args);
        System.out.println("(♥◠‿◠)ﾉﾞ  框架启动成功   ლ(´ڡ`ლ)ﾞ  \n");
    }
    @Bean
    public IdWorker idWorker(){
        return new IdWorker(1,1);
    }
}
