package com.company;

import de.codecentric.boot.admin.server.config.EnableAdminServer;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@SpringBootApplication
@EnableAdminServer
@EnableDiscoveryClient
@EnableEurekaClient
public class CloudAdminServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(CloudAdminServiceApplication.class, args);
    }


}