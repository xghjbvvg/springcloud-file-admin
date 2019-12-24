package com.company.service.impl;

import com.company.vo.FileItem;
import com.company.service.adapter.FileFinderServiceAdapter;
import com.company.service.enumPackage.TypeName;
import org.springframework.stereotype.Service;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

@Service
public class FileFinderServiceImpl extends FileFinderServiceAdapter {
    @Override
    public List<FileItem> findFileByImg(String path , String userId) {
        return findFile(path, TypeName.IMAGE,userId);
    }

    @Override
    public List<FileItem> findFileByZip(String path , String userId) {
        return findFile(path, TypeName.ZIP,userId);
    }

    @Override
    public List<FileItem> findFileByDoc(String path , String userId) {
        return findFile(path, TypeName.DOCUMENT,userId);
    }

    @Override
    public List<FileItem> findFileByTorrent(String path , String userId) {
        return findFile(path, TypeName.TORRENT,userId);
    }

    @Override
    public List<FileItem> findFileByVedio(String path , String userId) {
        return findFile(path, TypeName.VEDIO,userId);
    }

    @Override
    public List<FileItem> findFileByMusic(String path , String userId) {
        return findFile(path, TypeName.MUSIC,userId);
    }

    @Override
    public List<FileItem> findFileByOthers(String path , String userId) {
        return findFile(path, TypeName.OTHERS,userId);
    }

    /**
     * 关键字查找
     *
     * @param
     * @param
     * @return
     */
    @Override
    public List<FileItem> findFilesByKeyword(String userId, String keyword) {
        return findByKey(new ArrayList<FileItem>(), userId,keyword);
    }
}
