package com.company.util;

import com.company.domain.Message;
import com.company.service.MessageService;
import com.fasterxml.jackson.core.JsonProcessingException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

@Component
public class MessageUtil implements Runnable {

    @Autowired
    private MessageService messageService;
    private Message message;

    public void setMessage(Message message) {
        this.message = message;
    }
    @Override
    public void run() {
        System.out.println(messageService);
        try {
            messageService.saveMessage(message);
        } catch (JsonProcessingException e) {
            e.printStackTrace();
        }
    }
}
