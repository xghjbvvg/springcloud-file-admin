package com.company;


import org.junit.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class FileServiceApplicationTests {

    @Test
    static void contextLoads(){
        String path = "/F:/mavenProject2/spring-cloud-file-admin/file-service/target/classes/static/1/7d615690-5aa0-4d0f-b0bb-039be85efcbc.PNG";
        String[] split = path.split("static/");
        System.out.println(split[1]);
    }

}
