package com.company.service;

import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;

public interface FileService {
    /**
     * 上传文件（不分块）
     *
     *
     * @param username
     * @param name
     * @param md5
     * @param file
     * @param uploadPath
     * @throws IOException
     */
    public void upload(Long username, String name, String md5, MultipartFile file, String uploadPath) throws Exception;

    /**
     * 上传文件（分块）
     * @param userId
     * @param name
     * @param md5
     * @param size
     * @param chunks
     * @param chunk
     * @param file
     * @param uploadPath
     */
    public Boolean uploadWithBlock(Long userId, String name, String md5, Long size, Integer chunks, Integer chunk, MultipartFile file, String uploadPath) throws Exception;

    /**
     * 检查Md5判断文件是否已上传
     * false表示已经存在
     * true表示不存在
     *
     * @param md5
     * @param uid
     * @return
     */
    public boolean checkMd5(String md5, Long uid);

    /**
     * 用户注册初始化文件夹
     * @param userId
     */
    public void initUserFile(Long userId) ;

    public boolean deleteUserFile(Long userId);
}
