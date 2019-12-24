package com.company.dao;

import com.company.domain.Friend;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface FriendMapper {

    List<Friend> getAllFriend(Long uid);

    int insertFriend(Friend friend);

    int deleteFriend(Long id);

    int updateRemark(Long id,String remark);

    Long checkCode(Long code);
}
