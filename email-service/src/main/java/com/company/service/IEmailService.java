package com.company.service;

import com.company.domain.Email;
import com.company.domain.Question;

import java.util.List;

public interface IEmailService {
    /**
     *
     * @param toMail 收邮件人
     *
     * @return
     */
    Boolean sendMail(String toMail);

    /**
     *判断验证码是否相同
     * @param toMail
     * @param code
     * @return
     */
    Boolean isEquals(String toMail,String code);

    Boolean sendLetterByEmail(List<Email> emails);

    Boolean sendReplyToUser(Question question);
}
