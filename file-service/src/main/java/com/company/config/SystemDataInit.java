package com.company.config;

import com.company.dao.FileMapper;
import com.company.vo.FileVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.CommandLineRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import java.util.Date;

//@Component
@Order(1)
public class SystemDataInit implements CommandLineRunner {
    @Autowired
    UploadConfig uploadConfig;

    @Autowired
    FileMapper fileMapper;

    /**
     * 文件目录初始化
     *
     * @param args
     * @throws Exception
     */
    @Override
    public void run(String... args) throws Exception {
        //文件根路径
        String temp = uploadConfig.getAbsolutePath() + "/file/common";
//
        String[] folder = new String[]{"my", "pic", "doc", "vedio", "music"};
        for (int i = 0; i < folder.length; i++) {
            String str = "/" + folder[i];
            String path = temp + str;

            FileVo fileVo = new FileVo();
            fileVo.setName(folder[i]);
//            fileVo.setUploadTime(new Date());
            fileVo.setPath(path);
            fileVo.setParentName("common");
            fileVo.setAbsolutePath(temp);
            String url = uploadConfig.getIp() + "/static/file/common/" + str;
            fileVo.setUrl(url);
            try {

                int save = fileMapper.save(fileVo);
                System.out.println(save);
            } catch (Exception e) {
                e.printStackTrace();
            }
            System.out.println(fileVo);
            java.io.File file = new java.io.File(path);
            file.mkdirs();
        }
    }
}
