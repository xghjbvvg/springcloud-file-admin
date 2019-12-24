package com.company.service.impl;

import com.company.service.IEmailService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

import java.util.concurrent.TimeUnit;

@Service
public class EmailServiceImpl implements IEmailService {

    @Autowired
    JavaMailSender javaMailSender;

    Logger logger = LoggerFactory.getLogger(EmailServiceImpl.class);

    @Value("$(spring.mail.username)")
    private String username;
    @Autowired
    private RedisTemplate<String, String> redisTemplate;

    @Override
    public Boolean sendMail(String toMail) {

        SimpleMailMessage simpleMailMessage = new SimpleMailMessage();
//        随机验证码
        int code = (int)((Math.random()*9+1)*10000);
//        标题
        simpleMailMessage.setSubject("验证码");
//        发送人
        simpleMailMessage.setFrom("HuangChiXin6@163.com");
//        收件人
        simpleMailMessage.setTo(toMail);
//        主体
        simpleMailMessage.setText("亲，你的验证码为"+code+"，10分钟有效");
        try {
            javaMailSender.send(simpleMailMessage);
            logger.info("发送给" + toMail + "简单邮件已经发送。 " );
//            将code存储在redis中
            redisTemplate.opsForValue().set(toMail,Integer.toString(code));
            redisTemplate.expire(toMail,60*10, TimeUnit.SECONDS);
            return true;
        } catch (Exception e) {
            logger.info(e.getMessage());
            logger.info("发送给" + toMail + "简单邮件发送失败。 " );
            return false;

        }

    }

    @Override
    public Boolean isEquals(String toMail, String code) {
        String codeNum = redisTemplate.opsForValue().get(toMail);
        if (code.equals(codeNum)) {
            return true;
        }
        return false;
    }
}
