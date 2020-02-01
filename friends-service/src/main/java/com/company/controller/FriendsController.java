package com.company.controller;

import com.company.domain.Friend;
import com.company.domain.Message;
import com.company.domain.User;
import com.company.service.FriendService;
import com.company.vo.FriendVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RequestMapping("/friends")
@RestController
public class FriendsController {

    @Autowired
    FriendService friendService;

    @RequestMapping("/getAllFriendsAndGroup")
    public List<Friend> getAllFriendsAndGroup(Long uid){
        return friendService.getAllFriendsAndGroup(uid);
    }

    /**
     * 同意好友请求
     * @param uid
     * @param code
     * @param mid
     * @return
     */
    @RequestMapping("/agree")
    public int insertFriend(Long uid, Long code,Long mid) {
        return friendService.insertFriend(uid,code,mid);
    }

    /**
     * 不同意好友请求
     * @param mid 消息主键
     * @return
     */
    @RequestMapping("/disagree")
    public int disagree(Long mid){
        return friendService.disagree(mid);
    }

    /**
     * 删除好友请求
     * @param mid
     * @return
     */
    @RequestMapping("/remove")
    public int remove(Long mid){
        return friendService.remove(mid);
    }


    /**
     *
     * @param uid
     * @param code 手机号
     * @return
     */
    @RequestMapping("/sendRequestOfFriend")
    public int sendRequestOfFriend(Long uid, Long code) {
        return friendService.sendRequestOfFriend(uid,code);
    }

    @RequestMapping("/getRequestOfFriend")
    public List<FriendVo> getRequestOfFriend(Long uid){
        List<FriendVo> requestOfFriend = friendService.getRequestOfFriend(uid);
        System.out.println(requestOfFriend);
        return requestOfFriend;
    }



    @RequestMapping("/getFriendDetail")
    public Friend getFriendDEtail(Long friendId){
        return friendService.getFriendDetail(friendId);
    }

    @RequestMapping("/getFriend")
    public User getFriend(Long friendId){
        return friendService.getFriend(friendId);
    }


    @RequestMapping("/updateRemark")
    public Boolean updateRemark(Long friendId,Long uid,String remark){
        return friendService.updateRemark(friendId,uid,remark);
    }
    @RequestMapping("/deleteFriend")
    public Boolean deleteFriend(Long friendId,Long uid){
        return friendService.deleteFriend(friendId,uid);
    }



}
