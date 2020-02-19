package com.company.service.impl;

import com.company.service.IFileService;
import org.springframework.stereotype.Service;

//@Service
public class FileHystrixService implements IFileService {
    @Override
    public Boolean initFile(Long uid) {
        return false;
    }

    @Override
    public Boolean deleteUserFile(Long uid) {
        return false;
    }
}
