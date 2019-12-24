package com.company.service.adapter;

import com.company.service.FileService;
import org.springframework.web.multipart.MultipartFile;

public abstract class FileServiceAdapter implements FileService {
    @Override
    public void upload(Long username, String name, String md5, MultipartFile file, String uploadPath) throws Exception {

    }

    @Override
    public void uploadWithBlock(Long userId, String name, String md5, Long size, Integer chunks, Integer chunk, MultipartFile file, String uploadPath) throws Exception {

    }


    @Override
    public void initUserFile(Long userId)  {

    }
}
