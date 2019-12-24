package com.company.service.adapter;

import com.company.dao.FileMapper;
import com.company.vo.FileItem;
import com.company.service.FileFinderService;
import com.company.service.enumPackage.TypeName;
import com.company.service.impl.FileMenuServiceImpl;
import com.company.vo.FileVo;
import org.springframework.beans.factory.annotation.Autowired;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;

public abstract class FileFinderServiceAdapter implements FileFinderService {

    @Autowired
    FileMapper fileMapper;

    /**
     * 根据路径及文件类型查找，应用find（）方法
     *
     * @param path
     * @param typeName
     * @param userId
     * @return
     */
    public List<FileItem> findFile(String path, TypeName typeName, String userId) {
        List<FileItem> fileItemList = new ArrayList<>();
        return find(fileItemList, path, typeName, userId);
    }

    @Autowired
    FileMenuServiceImpl fileMenuService;

    /**
     * 根据路径及文件类型查找实际操作并把结果装入集合中
     *
     * @param fileItemList
     * @param
     * @param typeName
     * @return
     */
    public List<FileItem> find(List<FileItem> fileItemList, String path, TypeName typeName, String userId) {
        String regex = null;
        path = path + "%.%";
        Boolean flag = false;
        switch (typeName) {
            case IMAGE: {
                regex = "(.(gif|jpg|peg|bmp|png))";

                break;
            }
            case ZIP: {
                regex = "(.(zip|jar|rar|cab|iso|ace|7z|tar|gz|arj|lzh|uue|bz2))";
                break;
            }
            case DOCUMENT: {
                regex = "(.(doc|dot|docx|dotx|docm|dotm|xls|xlt|xla|xlsx|xltx|xlsm|xltm|xlam|xlsb|ppt|pot|pps|ppa|pptx|potx|ppsx|ppam|pptm|potm|ppsm|txt|md))";
                break;
            }
            case TORRENT: {
                regex = "(.(torrent))";
                break;
            }
            case MUSIC: {
                regex = "(.(mp3|midi|wma|vqf|amr))";
                break;
            }
            case VEDIO: {
                regex = "(.(mp4|flv|avi|rm|rmvb|mpeng1-4|mov|mtv|dat|wmv|3gb|amv|dmv|wmv))";
                break;
            }
            default: {
                regex = "(.(gif|jpg|peg|bmp|png|zip|jar|rar|cab|iso|ace|7z|tar|gz|arj|lzh|uue|bz2|z|doc|dot|docx|dotx|docm|dotm|xls|xlt|xla|xlsx|xltx|xlsm|xltm|xlam|xlsb|ppt|pdf|pot|pps|ppa|pptx|potx|ppsx|ppam|pptm|potm|ppsm|txt|md|torrent|mp3|midi|wma|vqf|amr|mp4|flv|avi|rm|rmvb|mpeng1-4|mov|mtv|dat|wmv|3gb|amv|dmv|wmv))";
                flag = true;
                break;
            }
        }
        List<FileVo> fileVos = fileMapper.findFileByType(path, regex, userId, flag);
        fileVos.forEach((fileVo) -> {
            FileItem fileItem = fileMenuService.fileItem(fileVo);
            fileItemList.add(fileItem);
        });
        return fileItemList;
    }

    /**
     * 根据关键字查找
     *
     * @param fileItemList
     * @param
     * @param key
     * @return
     */
    public List<FileItem> findByKey(List<FileItem> fileItemList, String userId, String key) {
        key = "%" + key + "%";
        List<FileVo> fileVos = fileMapper.findByKey(key, userId);
//        System.out.println(key);
        fileVos.forEach((fileVo) -> {
            FileItem fileItem = fileMenuService.fileItem(fileVo);
            fileItemList.add(fileItem);
        });
        return fileItemList;
    }
}
