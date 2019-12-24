package com.company;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.web.socket.config.annotation.EnableWebSocket;

@SpringBootApplication
@EnableEurekaClient
@EnableWebSocket
@MapperScan("com.company.dao")
public class FriendsServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(FriendsServiceApplication.class, args);
    }

}
