package com.company;

import de.codecentric.boot.admin.server.config.EnableAdminServer;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@EnableAdminServer
public class CloudAdminServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(CloudAdminServiceApplication.class, args);
    }

}
