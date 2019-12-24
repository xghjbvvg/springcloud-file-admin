package com.company.service;

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
}
