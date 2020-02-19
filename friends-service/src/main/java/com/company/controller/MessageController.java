package com.company.controller;

import com.company.domain.Message;
import com.company.service.FriendFeignClient;
import com.company.service.MessageService;
import com.company.vo.FileItem;
import com.company.vo.MessageSessionVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RequestMapping("/message")
@RestController
public class MessageController {

    @Autowired
    MessageService messageService;
    @Autowired
    FriendFeignClient friendFeignClient;

    @RequestMapping("/getUserMsg")
    public List<Message> getUserMsg(Long uid, Long friendId,int interval){
        return messageService.getUserMsg(uid,friendId,interval);
    }
    @PostMapping("/fileShare")
    public Boolean fileShare(@RequestParam("uid") Long uid , @RequestParam("friendId") Long friendId,@RequestBody FileItem fileItem,@RequestParam("parentId") Long parentId){
        System.out.println(uid+":"+friendId+":"+parentId);
        System.out.println(fileItem);
        return messageService.fileShare(uid,friendId,fileItem,parentId,true);
    }

    @RequestMapping("/getMsgSession")
    public List<MessageSessionVo> getMsgSession(Long uid){
        return messageService.getMsgSession(uid);
    }
    @RequestMapping("/updateMsgRead")
    public Boolean updateMsgRead(Long uid,Long friendId){
        return messageService.updateMsgRead( uid, friendId);
    }

    @PostMapping("/fileShare1")
    public Boolean fileShare1(String access_token){
        return friendFeignClient.fileShare(access_token);
    }

    @RequestMapping("/getUnreadMsgCount")
    public Integer getUnreadMsgCount(Long uid) {
        return messageService.getUnreadMsgCount(uid);
    }

}


