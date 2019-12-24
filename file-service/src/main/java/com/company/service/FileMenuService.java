package com.company.service;

import com.company.vo.FileItem;

import java.util.List;

public interface FileMenuService {
    /**
     * 根据目录获取文件目录
     *
     * @param path
     * @return
     */
    public List<FileItem> getFileMenu(Long uid,String path);

    /**
     * 获取主目录
     *
     * @return
     */
    public List<FileItem> getMainMenu(Long uid);
}
