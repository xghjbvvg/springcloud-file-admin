package com.company.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.MultipartConfigFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;
import org.springframework.util.ClassUtils;

import javax.servlet.MultipartConfigElement;

@Configuration
@Component
public  class UploadConfig {

    @Value("${upload.ip}")
     String ip;

    public String getIp() {
        System.out.println("ip:"+ip);
        return ip;
    }
    private final String absolutePath = ClassUtils.getDefaultClassLoader().getResource("").getPath()+"static/";

    public String getAbsolutePath(){
        return absolutePath;
    }

    @Value("${file.uploadFolder}")
    private String path;
    @Bean
    MultipartConfigElement multipartConfigElement() {
        MultipartConfigFactory factory = new MultipartConfigFactory();
        factory.setLocation(path);
        return factory.createMultipartConfig();
    }



}
