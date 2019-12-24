package com.company.controller;

import com.company.service.IEmailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/email")
public class EmailController {

    @Autowired
    IEmailService emailService;

    @RequestMapping("/sendEmail")
    public Boolean sendMail(String toMail){
        return emailService.sendMail(toMail);
    }

    @RequestMapping("/isEquals")
    public Boolean isEquals(String toMail,String code){
        return emailService.isEquals(toMail, code);
    }

}
