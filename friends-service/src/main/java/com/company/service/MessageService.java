package com.company.service;

import com.company.domain.Message;

public interface MessageService {
    public int saveMessage(Message msg);

    public int deleteMessage(Message msg);
}
