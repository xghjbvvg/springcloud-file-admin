package com.company.service.impl;

import com.company.dao.FriendMapper;
import com.company.dao.MessageMapper;
import com.company.domain.Friend;
import com.company.domain.Message;
import com.company.domain.User;
import com.company.service.FriendService;
import com.company.service.MessageService;
import com.company.vo.FriendVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
public class FriendServiceImpl implements FriendService {
    @Autowired
    FriendMapper friendMapper;

    @Autowired
    MessageMapper messageMapper;

    @Override
    public List<Friend> getAllFriendsAndGroup(Long uid) {
        List<Friend> friends = friendMapper.getAllFriend(uid);

        return friends;
    }

    @Autowired
    MessageService messageService;

    /**
     * 发送好友请求
     *
     * @param
     * @param uid
     * @return
     */
    public int sendRequestOfFriend( Long uid, Long code) {
        //检查电话号码是否存在
        User u = friendMapper.checkCode(code);
        if (u == null) {
            return 0;
        }
        Message msg = new Message();
        msg.setToUser(u.getId());
        msg.setFrom(uid);
        msg.setMessage("添加你为好友");
        msg.setFlag(2);
        msg.setIsRead(1);
        msg.setDate(new Date().toString());
        try{
            messageService.saveMessage(msg);
        }catch(Exception e){
            return 0;
        }
        return 1;
    }

    /**
     * 获取好友请求
     * @param uid
     * @return
     */
    @Override
    public List<FriendVo> getRequestOfFriend(Long uid) {
        return messageMapper.getRequestOfFriend(uid);
    }

    @Override
    @Transactional
    public int insertFriend(Long uid, Long code,Long mid) {
        //检查电话号码是否存在,通过电话获取好友id
        User u = friendMapper.checkCode(code);
        if (u == null) {
            return 0;
        }

        Friend friend = new Friend();
        User user1 = new User();
        user1.setId(u.getId());
        friend.setFriend(user1);

        User user = new User();
        user.setId(uid);
        friend.setUser(user);
        messageMapper.updateFlag(mid);
        return friendMapper.insertFriend(friend);

    }

    @Override
    public Boolean deleteFriend(Long friendId,Long uid) {
        try{
            friendMapper.deleteFriend(friendId, uid);
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
        return true;
    }

    @Override
    public Boolean updateRemark(Long friendId,Long uid,String remark){
        try{
            int i = friendMapper.updateRemark(friendId, uid, remark);
            System.out.println(i);
            if(i == 0){
                return false;
            }
        }catch(Exception e){
            return false;
        }
        return true;
    }


    @Override
    public int disagree(Long mid) {
        return messageMapper.disagree(mid);
    }

    @Override
    public int remove(Long mid) {
        return messageMapper.remove(mid);
    }

    @Override
    public Friend getFriendDetail(Long friendId,Long uid) {
        Friend detail = friendMapper.getFriendDetail(friendId,uid);
        return detail;
    }

    @Override
    public User getFriend(Long to) {
        return friendMapper.getFriend(to);
    }
}
