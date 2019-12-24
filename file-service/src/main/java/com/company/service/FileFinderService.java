package com.company.service;

import com.company.vo.FileItem;

import java.util.List;

public interface FileFinderService {
    /**
     * 查找图像文件
     *
     * @return
     */
    public List<FileItem> findFileByImg(String path , String userId);

    /**
     * 查找压缩文件
     *
     * @return
     */
    public List<FileItem> findFileByZip(String path , String userId);

    /**
     * 查找文档类型的文件
     *
     * @return
     */
    public List<FileItem> findFileByDoc(String path , String userId);

    /**
     * 查找种子
     *
     * @return
     */
    public List<FileItem> findFileByTorrent(String path , String userId);

    /**
     * 查找视屏文件
     *
     * @return
     */
    public List<FileItem> findFileByVedio(String path , String userId);

    /**
     * 查找音乐文件
     *
     * @return
     */
    public List<FileItem> findFileByMusic(String path , String userId);

    /**
     * 查找其他文件
     *
     * @return
     */
    public List<FileItem> findFileByOthers(String path , String userId);


    /**
     * 根据字符串查找文件集合
     */
    public List<FileItem> findFilesByKeyword(String userId, String keyword);
}
