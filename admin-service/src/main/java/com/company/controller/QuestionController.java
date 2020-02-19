package com.company.controller;

import com.company.domain.Question;
import com.company.service.IQuestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/admin")
public class QuestionController {

    @Autowired
    IQuestService questService;


    @RequestMapping("/saveQuestion")
    public Boolean saveQuestion(@RequestBody Question question){
        return questService.saveQuestion(question);
    }
    @RequestMapping("/getQuestions")
    @PreAuthorize("hasAnyAuthority('getQuestions')")
    public List<Question> getQuestions(Integer flag){
        return questService.getQuestions(flag);
    }

    @RequestMapping("/updateQuestion")
    @PreAuthorize("hasAnyAuthority('updateQuestion')")
    public Boolean updateQuestion(@RequestBody Question question) {
        return questService.updateQuestion(question);
    }



}
