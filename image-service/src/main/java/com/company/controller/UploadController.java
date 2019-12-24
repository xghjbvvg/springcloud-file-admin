package com.company.controller;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;

@RestController
public class UploadController {

    @Value("${imgBasePath}")
    public String path;

    @RequestMapping("/upload")
    public String upload(MultipartFile file, HttpServletRequest request) throws IOException {
        InputStream inputStream = file.getInputStream();
        String fileName = file.getOriginalFilename();
        Resource resource = new ClassPathResource("/static/head/");
        String filePath = resource.getURI().getPath() + "/" + fileName;
        System.out.println(filePath);
        file.transferTo(new File(filePath));
        return path+"/"+fileName;
    }


}
