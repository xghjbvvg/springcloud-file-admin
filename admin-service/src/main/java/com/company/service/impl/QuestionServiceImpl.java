package com.company.service.impl;

import com.company.dao.QuestionMapper;
import com.company.domain.Question;
import com.company.service.IQuestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class QuestionServiceImpl implements IQuestService {
    @Autowired
    QuestionMapper questionMapper;

    @Override
    public Boolean saveQuestion(Question question) {
        try {
            int i = questionMapper.saveQuestion(question);
            if (i > 0) {
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
        return false;
    }

    @Override
    public List<Question> getQuestions(Integer flag) {

        return questionMapper.getQuestions(flag);

    }

    @Override
    public Boolean updateQuestion(Question question) {
        try {
            questionMapper.updateQuestion(question);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
