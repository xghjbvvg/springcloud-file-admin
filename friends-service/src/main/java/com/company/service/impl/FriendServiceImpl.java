package com.company.service.impl;

import com.company.dao.FriendMapper;
import com.company.dao.GroupMapper;
import com.company.domain.Friend;
import com.company.domain.Group;
import com.company.domain.User;
import com.company.service.FriendService;
import com.company.vo.FriendVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

@Service
public class FriendServiceImpl implements FriendService {
    @Autowired
    FriendMapper friendMapper;

    @Autowired
    GroupMapper groupMapper;

    @Override
    public List<FriendVo> getAllFriendsAndGroup(Long uid) {
        List<Friend> friends = friendMapper.getAllFriend(uid);
        List<Group> groups = groupMapper.getAllGroup(uid);
        List<FriendVo> friendVos = new ArrayList<FriendVo>();
        friends.forEach((friend) -> {
            FriendVo friendVo = new FriendVo(friend.getId(), friend.getFriendId(), friend.getUser().getUsername(), friend.getUser().getImageUrl(), true);
            friendVos.add(friendVo);
        });
        groups.forEach((group) -> {
            FriendVo friendVo = new FriendVo(group.getId(), group.getGroupId(), group.getGroupName(), group.getGroupImagePath(), false);
            friendVos.add(friendVo);
        });

        return friendVos;
    }

    @Override
    public int insertFriend(Long uid, Long code) {

        Long id = friendMapper.checkCode(code);
        if (id == null) {
            return 0;
        }

        Friend friend = new Friend();
        friend.setDate(new SimpleDateFormat("yyyy-MM-dd hh:mm:ss").format(new Date()));
        friend.setFriendId(id);
        User user = new User();
        user.setId(uid);
        friend.setUser(user);
        return friendMapper.insertFriend(friend);

    }

    @Override
    public int deleteFriend(Long id) {
        return friendMapper.deleteFriend(id);
    }

    @Override
    public int updateRemark(Long id, String remark) {
        return friendMapper.updateRemark(id, remark);
    }
}
