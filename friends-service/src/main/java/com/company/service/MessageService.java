package com.company.service;

import com.company.domain.Message;
import com.company.vo.FileItem;
import com.company.vo.FileVo;
import com.fasterxml.jackson.core.JsonProcessingException;

import java.util.List;

public interface MessageService {
    public int saveMessage(Message msg) throws JsonProcessingException;

    public int deleteMessage(Message msg);


    List<Message> getUserMsg(Long uid, Long friendId, int interval);

    Boolean fileShare(Long uid, Long friendId, FileItem fileItem, Long parentId);

}
