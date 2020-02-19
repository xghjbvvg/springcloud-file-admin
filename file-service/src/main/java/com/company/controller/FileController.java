package com.company.controller;

import com.company.service.FileService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;

@RequestMapping("/file")
@RestController
public class FileController {

    @Autowired
    FileService fileService;

    /**
     *
     * @param uid 用户名
     * @param name 文件名
     * @param md5
     * @param size
     * @param chunks
     * @param chunk
     * @param uploadPath
     * @param file
     * @throws Exception
     */
    @RequestMapping("/fileUpload")
    public void upload(HttpSession session,Long uid, String name, String md5, Long size, Integer chunks, Integer chunk, String uploadPath, MultipartFile file) throws Exception {

        if (chunks != null && chunks != 0) {
            fileService.uploadWithBlock(session,uid,name, md5, size, chunks, chunk, file,uploadPath);
        } else {
            fileService.upload(uid,name, md5, file,uploadPath);
        }
    }

    @RequestMapping("/checkIsExist")
    public Boolean checkIsExist(String md5,Long uid) {
        return fileService.checkMd5(md5,uid);
    }

    /**
     * 根据用户id初始化用户文件
     * @param uid
     * @return
     */
    @GetMapping("/initFile/{uid}")
    public Boolean initFile(@PathVariable Long uid){
        try{
            fileService.initUserFile(uid);
            return true;
        }catch (Exception e){
            return false;
        }
    }

    @RequestMapping("/deleteUserFile/{uid}")
    public Boolean deleteUserFile(@PathVariable Long uid){

        return fileService.deleteUserFile(uid);
    }



}
