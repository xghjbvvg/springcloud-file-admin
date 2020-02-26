package com.company.dao;

import com.company.domain.Friend;
import com.company.domain.User;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface FriendMapper {

    List<Friend> getAllFriend(Long uid);

    int insertFriend(Friend friend);

    int deleteFriend(Long friendId,Long uid);

    int updateRemark(Long friendId,Long uid,String remark);

    User checkCode(Long code);


    Friend getFriendDetail(Long friendId,Long uid);

    User getFriend(Long to);
}
