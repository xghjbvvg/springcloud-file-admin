package com.company.service.impl;

import com.company.dao.EmailMapper;
import com.company.domain.Email;
import com.company.service.IEmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class EmailServiceImpl implements IEmailService {
    @Autowired
    EmailMapper emailMapper;
    @Override
    public Boolean saveEmail(Email email) {
        try{
            emailMapper.saveEmail(email);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }
}
