package com.company.config;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.stereotype.Component;

@Configuration
@Component
public  class UploadConfig {

    @Value("${upload.ip}")
     String ip;

    public String getIp() {
        System.out.println("ip:"+ip);
        return ip;
    }
    //    public static String ip1 = ip;


}
