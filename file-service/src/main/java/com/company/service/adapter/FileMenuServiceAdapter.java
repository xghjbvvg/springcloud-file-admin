package com.company.service.adapter;

import com.company.dao.FileMapper;
import com.company.dao.FileUserMapper;
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
    FileUserMapper fileMapper;


    /**
     * 封装目录所有文件
     *
     * @param uid
     * @return
     */
    public List<FileItem> getAllFileItems(Long uid,String basePath,boolean flag) {
//        File file = new File(path);
//        File[] list = file.listFiles();
        //System.out.println("basePath:"+basePath);
        List<FileVo> fileVoList = fileMapper.findByUid(uid,basePath,flag);

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
        fileItem.setId(fileVo.getId());
        //名字
        fileItem.setName(fileVo.getName());
        //绝对路径
//        String uri = f.toURI().getPath();
//        String split = null;
        fileItem.setUrl(fileVo.getUrl());
        fileItem.setPath(fileVo.getPath());
        fileItem.setAbsolutePath(fileVo.getAbsolutePath());
        //父路径
        fileItem.setParentName(fileVo.getParentName());
        //修改时间
        fileItem.setDateMillis(f.lastModified());
//        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
//        String format = dateFormat.format();
        StringBuilder uploadTime = new StringBuilder();
        uploadTime.append(fileVo.getUploadTime());
        fileItem.setDate(uploadTime.toString());
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
