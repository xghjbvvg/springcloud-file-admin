package com.company;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;
import org.springframework.cloud.netflix.hystrix.EnableHystrix;
import org.springframework.cloud.openfeign.EnableFeignClients;
import org.springframework.web.socket.config.annotation.EnableWebSocket;

@SpringBootApplication
@EnableEurekaClient
@EnableWebSocket
@EnableFeignClients
@EnableHystrix
@EnableDiscoveryClient
@MapperScan("com.company.dao")
public class FriendsServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(FriendsServiceApplication.class, args);
    }

}
