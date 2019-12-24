package com.company.service.impl;

import com.company.config.UploadConfig;
import com.company.dao.FileMapper;
import com.company.vo.FileVo;
import com.company.exception.UploadException;
import com.company.service.adapter.FileServiceAdapter;
import com.company.util.FileUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.ClassUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.IOException;
import java.util.Date;

import static com.company.util.FileUtils.generateFileName;
import static com.company.util.UploadUtils.*;

@Service
public class FileServiceImpl extends FileServiceAdapter {

    @Autowired
    FileMapper fileMapper;

    @Autowired
    UploadConfig uploadConfig;



    private final String absolutePath = ClassUtils.getDefaultClassLoader().getResource("").getPath()+"static/";

    /**
     * 上传文件
     *  @param userId
     * @param md5
     * @param file
     * @param uploadPath
     */
    @Override
    public void upload(Long userId, String name,
                       String md5,
                       MultipartFile file, String uploadPath) throws Exception {
        String[] split = name.split("\\.");
        String realName = name;
        name = generateFileName() + "." + split[1];
//        文件随机名
        String path = uploadPath +"/" +name;
        System.out.println(uploadPath);
        try {
            fileMapper.save(wrapperFileVo(userId,path,name,md5, realName));
        } catch (Exception e) {
            System.out.println(e.getMessage());
            java.io.File f = new java.io.File(path);
            System.out.println(f.exists());
            if (f.exists()) {
                f.delete();
            }
            throw new UploadException("上传出错");
        }

    }

    /**
     * 分块上传文件
     *
     *
     * @param userId
     * @param md5
     * @param size
     * @param chunks
     * @param chunk
     * @param file
     * @param uploadPath
     * @throws IOException
     */
    @Override
    public void uploadWithBlock(Long userId, String name,
                                String md5,
                                Long size,
                                Integer chunks,
                                Integer chunk,
                                MultipartFile file, String uploadPath) throws Exception {

        String[] split = name.split("\\.");
//        保存真实名称
        String realName = name;
//        System.out.println(realName);
//        name = generateFileName() + "." + split[1];
//        System.out.println(name);
//        文件随机名
        String path = uploadPath +"/" +name;
        String fileName = getFileName(md5, chunks) + "." + split[1];
//        System.out.println(fileName);
        try {
            FileUtils.writeWithBlock(path, size, file.getInputStream(), file.getSize(), chunks, chunk);
            addChunk(md5, chunk);
            if (isUploaded(md5)) {
                removeKey(md5);
                fileMapper.save(wrapperFileVo(userId,path,name,md5,realName));
            }
        } catch (Exception e) {
            e.printStackTrace();
            java.io.File f = new java.io.File(path);
            System.out.println(f.exists());
            if (f.exists()) {
                f.delete();
            }
            throw new UploadException("上传出错");
        }
    }


    public  FileVo wrapperFileVo(Long userId, String path, String name, String md5, String realName){

        FileVo fileVo = new FileVo(realName, md5, path, new Date());
        fileVo.setUid(userId);
        fileVo.setAbsolutePath(path.substring(0,path.lastIndexOf("/")-1));
        String[] strings = path.split("/");
        fileVo.setParentPath(strings[strings.length - 2]);
        fileVo.setUrl(uploadConfig.getIp() +"/static/"+path.split("static/")[1]);
        System.out.println(fileVo);
        return fileVo;
    }

    /**
     * 检查Md5判断文件是否已上传
     * false表示已经存在
     * true表示不存在
     *
     * @param md5
     * @param uid
     * @return
     */
    public boolean checkMd5(String md5, Long uid) {
        FileVo fileVo = new FileVo();
        fileVo.setMd5(md5);
        fileVo.setUid(uid);
        return fileMapper.getByFile(fileVo) == null;
    }

    @Override
    public void initUserFile(Long userId) {
//            String absolutePath = ClassUtils.getDefaultClassLoader().getResource("").getPath()+"static/";
//            System.out.println(6666);
            String[] folder = new String[]{userId.toString(),"my","picture","document","movie"};
            String temp = absolutePath ;

            for (int i = 1; i < folder.length; i++) {
                String str = folder[0]+"/"+folder[i];
                String path  = temp+str;

                FileVo fileVo = new FileVo();
                fileVo.setName(folder[i]);
                fileVo.setUploadTime(new Date());
                fileVo.setPath(path);
                fileVo.setParentPath(folder[0]);
                fileVo.setAbsolutePath(temp);
                fileVo.setUid(userId);
                String url= uploadConfig.getIp()+"/static/"+str;
                fileVo.setUrl(url);
                try{
                    int save = fileMapper.save(fileVo);
                    System.out.println(save);
                }catch (Exception e){
                    e.printStackTrace();
                }
                System.out.println(fileVo);
                java.io.File file = new java.io.File(path);
                file.mkdirs();

            }
        }

    @Override
    public boolean deleteUserFile(Long userId){
        String path = absolutePath+userId;
        java.io.File file = new java.io.File(path);
//        System.out.println(path);
        try{
            delAllFile(file);
            return true;
        }catch(Exception e){
            return false;
        }

    }




    /**
     * 删除文件或文件夹
     * @param directory
     */
    public static void delAllFile(java.io.File directory){
        if (!directory.isDirectory()){
            directory.delete();
        } else{
            java.io. File [] files = directory.listFiles();

            // 空文件夹
            if (files.length == 0){
                directory.delete();
                System.out.println("删除" + directory.getAbsolutePath());
                return;
            }

            // 删除子文件夹和子文件
            for (java.io.File file : files){
                if (file.isDirectory()){
                    delAllFile(file);
                } else {
                    file.delete();
                    System.out.println("删除" + file.getAbsolutePath());
                }
            }

            // 删除文件夹本身
            directory.delete();
            System.out.println("删除" + directory.getAbsolutePath());
        }
    }

}
