package com.company.service;

import com.company.domain.Message;
import com.company.vo.FileItem;
import com.company.vo.MessageSessionVo;
import com.fasterxml.jackson.core.JsonProcessingException;

import java.util.List;

public interface MessageService {
    public int saveMessage(Message msg) throws JsonProcessingException;

    public int deleteMessage(Message msg);


    List<Message> getUserMsg(Long uid, Long friendId, int interval);

    Boolean fileShare(Long uid, Long friendId, FileItem fileItem, Long parentId, boolean b);

    List<MessageSessionVo> getMsgSession(Long uid);

    Boolean updateMsgRead(Long uid, Long friendId);

    Integer getUnreadMsgCount(Long uid);
}
