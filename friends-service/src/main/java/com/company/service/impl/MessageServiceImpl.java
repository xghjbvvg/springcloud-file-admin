package com.company.service.impl;

import com.company.dao.MessageMapper;
import com.company.domain.Message;
import com.company.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;

@Component
public class MessageServiceImpl implements MessageService {
    @Resource
    @Qualifier("messageMapper")
    MessageMapper messageMapper;

    @Override
    public int saveMessage(Message msg) {
        msg.setDate(new SimpleDateFormat("yy-MM-dd hh:ss").format(new Date()));
        msg.setIsRead(0);
        System.out.println(messageMapper);
        return messageMapper.saveMessage(msg);

    }

    @Override
    public int deleteMessage(Message msg) {
        return 0;
    }
}
