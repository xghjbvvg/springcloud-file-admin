package com.company.controller;

import com.company.service.FileMenuService;
import com.company.vo.FileItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/file")
public class FileFinderController {
    @Autowired
    FileMenuService fileMenuService;

    /**
     * 获取制定目录下文件
     *
     * @param path
     * @return
     */
    @RequestMapping("/getMenuByPath")
    public List<FileItem> getFileMenu(Long uid,String path) {
        System.out.println(path);
        return fileMenuService.getFileMenu(uid,path);
    }

    /**
     * 获取主目录文件
     *
     * @return
     */
    @RequestMapping("/getMainMenu")
    public List<FileItem> getMainMenu(Long uid) {
        return fileMenuService.getMainMenu(uid);
    }

}
