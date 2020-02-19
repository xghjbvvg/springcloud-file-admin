package com.company.dao;

import com.company.domain.Message;
import com.company.vo.FileItem;
import com.company.vo.FileVo;
import com.company.vo.FriendVo;
import com.company.vo.MessageSessionVo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MessageMapper {
    public int saveMessage(Message msg);

    public int deleteMessage(Message msg);

    int updateFlag(Long mid);

    List<FriendVo> getRequestOfFriend(Long uid);

    int disagree(Long mid);

    int remove(Long mid);

    List<Message> getUserMsg(Long uid, Long friendId, int interval);

    void fileShare(Long uid, Long friendId, FileItem fileItem, Long parentId);

    List<FileVo> findFileByUid(Long uid, Long parentId);

    List<MessageSessionVo> getMsgSession(Long uid);

    void updateMsgRead(Long to, Long from);

    Integer getUnreadMsgCount(Long uid);
}
