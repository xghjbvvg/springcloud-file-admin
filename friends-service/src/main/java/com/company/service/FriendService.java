package com.company.service;

import com.company.vo.FriendVo;

import java.util.List;

public interface FriendService {

    List<FriendVo> getAllFriendsAndGroup(Long uid);

    int insertFriend(Long uid, Long code);

    int deleteFriend(Long id);

    int updateRemark(Long id,String remark);
}
