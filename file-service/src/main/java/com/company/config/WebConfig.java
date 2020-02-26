package com.company.config;


import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
@Component
@Configuration
public class WebConfig extends WebMvcConfigurationSupport {

    @Value("${file.uploadFolder}")
    private String path;

    @Value("${file.staticAccessPath}")
    private String staticAccessPath;
    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        //将所有/static/** 访问都映射到classpath:/static/ 目录下
        registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");

        registry.addResourceHandler(staticAccessPath).addResourceLocations("file:" + path);
    }

    public String getRootPath(){
        return path;
    }


}
