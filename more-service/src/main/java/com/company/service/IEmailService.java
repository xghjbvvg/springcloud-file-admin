package com.company.service;

import com.company.domain.Email;

import java.util.List;

public interface IEmailService {
    /**
     * 保存邮件信息
     * @param email
     */
    public Boolean saveEmail(Email email);


}
