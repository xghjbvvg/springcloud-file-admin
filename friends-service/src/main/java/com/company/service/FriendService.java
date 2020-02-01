package com.company.service;

import com.company.domain.Friend;
import com.company.domain.Message;
import com.company.domain.User;
import com.company.vo.FriendVo;
import feign.Param;

import java.util.List;

public interface FriendService {

    List<Friend> getAllFriendsAndGroup(Long uid);

    int insertFriend(Long uid, Long code,Long mid);
    int sendRequestOfFriend( Long uid, Long code) ;

    List<FriendVo> getRequestOfFriend(Long uid);

    Boolean deleteFriend( Long friendId, Long uid);

    Boolean updateRemark(Long friendId,Long uid,String remark);

    int disagree(Long mid);

    int remove(Long mid);

    Friend getFriendDetail(Long friendId);

    User getFriend(Long to);
}
