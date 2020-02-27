package com.company.controller;

import com.company.domain.Email;
import com.company.domain.Question;
import com.company.service.IEmailService;
import com.company.service.IQuestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/more/email")
public class EmailController {
    @Autowired
    IEmailService emailService;

    @Autowired
    IQuestService questService;

    @RequestMapping("/save")
    public Boolean saveEmail(@RequestBody Email email){
        System.out.println(email);
        return emailService.saveEmail(email);
    }

    @RequestMapping("/hello")
    public String  hello(){
        return "hello,world";
    }

    @RequestMapping("/saveQuestion")
    public Boolean saveQuestion(@RequestBody Question question){
        return questService.saveQuestion(question);
    }

}
