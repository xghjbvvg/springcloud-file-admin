package com.company.service.impl;

import com.company.dao.MessageMapper;
import com.company.domain.Message;
import com.company.service.MessageService;
import com.company.vo.FileItem;
import com.company.vo.FileVo;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Component
public class MessageServiceImpl implements MessageService {
    @Resource
    @Qualifier("messageMapper")
    MessageMapper messageMapper;
    //json序列化与反序列化
    private ObjectMapper mapper = new ObjectMapper();

    @Override
    public int saveMessage(Message msg) throws JsonProcessingException {
        msg.setDate(new SimpleDateFormat("yy-MM-dd hh:ss").format(new Date()));
        //msg.setIsRead(0);
        if(msg.getFlag().equals(0)){
            FileItem fileItem = msg.getFileItem();
            String fileStr = mapper.writeValueAsString(fileItem);
            msg.setMessage(fileStr);
        }
        return messageMapper.saveMessage(msg);
    }

    @Override
    public int deleteMessage(Message msg) {
        return 0;
    }

    @Override
    public List<Message> getUserMsg(Long uid, Long friendId, int interval) {
        List<Message> userMsg = messageMapper.getUserMsg(uid, friendId, interval);
        userMsg.forEach((message)->{
            if(message.getFlag().equals(0)){
                try {
                    FileItem fileItem = mapper.readValue(message.getMessage(), FileItem.class);
                    message.setFileItem(fileItem);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        });
        return userMsg;
    }

    private static boolean flag = true;
    @Override
    @Transactional
    public Boolean fileShare(Long uid, Long friendId, FileItem fileItem, Long parentId) {
        try{
            //messageMapper.fileShare(uid,friendId,fileItem,parentId);
            if(fileItem.getIsFolder()){
                //文件夹
                List<FileVo> fileByUid = messageMapper.findFileByUid(friendId, fileItem.getId());
                if(!flag){
                    parentId = fileItem.getId();
                }else{
                    flag = false;
                }
                for (FileVo fileVo:fileByUid) {

                    FileItem item = fileItem(fileVo);
                    if(!item.getName().contains(".")){
                        fileShare(uid,friendId,item, parentId);
                    }
                    messageMapper.fileShare(uid,friendId,item,parentId);
                }
            }
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
        return true;
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
        String uri = f.toURI().getPath();
        String split = null;
        fileItem.setUrl(fileVo.getUrl());
        fileItem.setPath(fileVo.getPath());
        fileItem.setAbsolutePath(fileVo.getAbsolutePath());
        //父路径
        fileItem.setParentName(fileVo.getParentName());
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
