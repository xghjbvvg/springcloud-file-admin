package com.company.service.impl;

import com.company.vo.FileItem;
import com.company.service.adapter.FileMenuServiceAdapter;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class FileMenuServiceImpl extends FileMenuServiceAdapter {

    @Override
    public List<FileItem> getFileMenu(Long uid,String path) {
        String[] split = path.split("/");
        return super.getAllFileItems(uid, path,false);
    }

    @Override
    public List<FileItem> getMainMenu(Long uid) {
        return super.getAllFileItems(uid,"#"+uid.toString(),true);
    }
}
