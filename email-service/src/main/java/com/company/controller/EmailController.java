package com.company.controller;

import com.company.domain.Email;
import com.company.domain.Question;
import com.company.service.IEmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/email")
public class EmailController {

    @Autowired
    IEmailService emailService;

    @RequestMapping("/sendNumberByEmail")
    public Boolean sendMail(String toMail){
        return emailService.sendMail(toMail);
    }

    @RequestMapping("/isEquals")
    public Boolean sendNumberByEmail(String toMail,String code){
        return emailService.isEquals(toMail, code);
    }

    /**
     * 发送信件给用户
     * @param emails
     * @return
     */
    @RequestMapping("/sendLetterByEmail")
    public Boolean sendLetterByEmail(@RequestBody List<Email> emails){
        return emailService.sendLetterByEmail(emails);
    }

    /**
     * 发送用户问题已解决给用户
     * @param question
     * @return
     */
    @RequestMapping("/sendReplyToUser")
    public Boolean sendReplyToUser(@RequestBody Question question){
        return emailService.sendReplyToUser(question);
    }

}
