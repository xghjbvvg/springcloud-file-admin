package com.company.service.adapter;

import com.company.dao.FileMapper;
import com.company.vo.FileItem;
import com.company.service.FileMenuService;
import com.company.vo.FileVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;

import java.io.File;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

public abstract class FileMenuServiceAdapter implements FileMenuService {


    @Value("${upload.environment")
    public String environment;
    @Value("${eureka.instance.ip-address}")
    private String ip;
    @Autowired
    FileMapper fileMapper;


    /**
     * 封装目录所有文件
     *
     * @param uid
     * @return
     */
    public List<FileItem> getAllFileTItems(Long uid,String basePath) {
//        File file = new File(path);
//        File[] list = file.listFiles();
        List<FileVo> fileVoList = fileMapper.getById(uid,basePath);

        List<FileItem> allFile = new ArrayList<FileItem>();
        if (fileVoList.size() != 0) {
            for (FileVo f : fileVoList) {
                FileItem fileItem = fileItem(f);
                allFile.add(fileItem);
            }
        }

        return allFile;
    }

    /**
     * 封装fileItem
     *
     * @param fileVo
     * @return
     */
    public FileItem fileItem(FileVo fileVo) {
        File f = new File(fileVo.getPath());
        FileItem fileItem = new FileItem();
        //名字
        fileItem.setName(fileVo.getName());
        //绝对路径
        String uri = f.toURI().getPath();
        String split = null;
        fileItem.setUrl(fileVo.getUrl());
//        System.out.println(split);
        fileItem.setAbsolutePath(fileVo.getPath());
        //父路径
        fileItem.setParentPath(fileVo.getAbsolutePath()+fileVo.getParentPath());
        //修改时间
        fileItem.setDateMillis(f.lastModified());
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
        String format = dateFormat.format(f.lastModified());
        fileItem.setDate(format);
        //大小
        fileItem.setRealSize(f.length());
        String size = null;
        DecimalFormat decimalFormat = new DecimalFormat("#.00");
        if (f.length() < 1024) {
            size = decimalFormat.format(f.length()) + "BT";
        } else if (f.length() < 1048576) {
            size = decimalFormat.format((double) f.length() / 1024) + "KB";
        } else if (f.length() < 1073741824) {
            size = decimalFormat.format((double) f.length() / 1048576) + "MB";
        } else {
            size = decimalFormat.format((double) f.length() / 1073741824) + "GB";
        }

        //判断是否为目录
        boolean directory = f.isDirectory();
        if (directory) {
            size = "-";
        }
        fileItem.setSize(size);
        fileItem.setIsFolder(directory);
//        System.out.println(fileItem);
        return fileItem;
    }
}
