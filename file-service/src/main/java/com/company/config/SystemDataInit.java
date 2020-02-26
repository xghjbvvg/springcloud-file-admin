package com.company.config;

import com.company.dao.FileMapper;
import com.company.vo.FileVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

import java.util.Date;

@Component
@Order(1)
public class SystemDataInit implements CommandLineRunner {
    @Autowired
    UploadConfig uploadConfig;

    @Autowired
    FileMapper fileMapper;



    @Value("${file.uploadFolder}")
    private String path;



    /**
     * 文件目录初始化
     *
     * @param args
     * @throws Exception
     */
    @Override
    public void run(String... args) throws Exception {
        //文件根路径
        String temp = path;
//
        String[] folder = new String[]{"my", "pic", "doc", "vedio", "music"};
        for (int i = 0; i < folder.length; i++) {
            String str =  folder[i];
            String path = temp + str;

            FileVo fileVo = new FileVo();
            fileVo.setName(folder[i]);
//            fileVo.setUploadTime(new Date());
            fileVo.setPath(path);
            fileVo.setParentName("uploadFolder");
            fileVo.setAbsolutePath(temp);
            String url = uploadConfig.getIp() + str;
            fileVo.setUrl(url);

            System.out.println(fileVo);
            java.io.File file = new java.io.File(path);
            if(!file.exists()){
                file.mkdirs();
            }else{
                break;
            }
            try {
                int save = fileMapper.save(fileVo);
                System.out.println(save);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
