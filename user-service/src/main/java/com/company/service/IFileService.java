package com.company.service;

import com.company.service.impl.FileHystrixService;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Service
@FeignClient(value = "file-service")
public interface IFileService {
    @GetMapping("/file/initFile/{uid}")
    public Boolean initFile(@PathVariable("uid")  Long uid);

    @RequestMapping("/file/deleteUserFile/{uid}")
    public Boolean deleteUserFile(@PathVariable("uid")  Long uid);
}
