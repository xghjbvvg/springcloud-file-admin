package com.company.dao;

import com.company.domain.Message;
import org.springframework.stereotype.Repository;

@Repository
public interface MessageMapper {
    public int saveMessage(Message msg);

    public int deleteMessage(Message msg);
}
