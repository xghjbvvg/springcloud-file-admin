package com.company.dao;

import com.company.domain.Email;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface EmailMapper {
    /**
     * 保存邮件信息
     * @param email
     */
 public void saveEmail(Email email);

    /**
     * 获取当日要发送的邮件
     * @return
     */
 public List<Email> getCurrentEmail();
}
