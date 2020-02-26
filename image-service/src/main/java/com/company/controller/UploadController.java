package com.company.controller;

import org.apache.commons.io.FileUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;
import org.springframework.util.ClassUtils;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;

@RestController
public class UploadController {

    @Value("${imgBasePath}")
    public String path;

    @Value("${file.uploadFolder}")
    private String uploadFolder;

    @RequestMapping("/upload")
    public String upload(MultipartFile file, HttpServletRequest request) throws IOException {
        String fileName = file.getOriginalFilename();
        //ClassPathResource resource = new ClassPathResource("/static/head/");
        String filePath = uploadFolder + "/" + fileName;
        System.out.println(filePath);
        File file1 = new File(filePath);
        if(!file1.getParentFile().exists()){ //判断文件父目录是否存在
            file1.getParentFile().mkdir();
        }
        if (!file.isEmpty()) {
            FileUtils.copyInputStreamToFile(file.getInputStream(),file1);
        }
        //file.transferTo(file1);
        return this.path +"/"+fileName;
    }


}
