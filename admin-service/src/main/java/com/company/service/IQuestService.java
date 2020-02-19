package com.company.service;

import com.company.domain.Question;

import java.util.List;

public interface IQuestService {

    Boolean saveQuestion(Question question);

    List<Question> getQuestions(Integer flag);

    Boolean updateQuestion(Question question);
}
