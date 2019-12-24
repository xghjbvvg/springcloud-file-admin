package com.company.controller;

import com.company.domain.Friend;
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
    public List<FriendVo> getAllFriendsAndGroup(Long uid){
        return friendService.getAllFriendsAndGroup(uid);
    }

    @RequestMapping("/insertFriend")
    public int insertFriend(Long uid, Long code) {
        return friendService.insertFriend(uid,code);
    }

    @RequestMapping("/deleteFriend")
    public int deleteFriend(Long id) {
        return friendService.deleteFriend(id);
    }

    @RequestMapping("/updateRemark")
    public int updateRemark(Long id, String remark) {
        return friendService.updateRemark(id,remark);
    }

}
