package com.company.dao;

import com.company.domain.Question;

import java.util.List;

public interface QuestionMapper {
    int saveQuestion(Question question);

    List<Question> getQuestions(Integer flag);

    void updateQuestion(Question question);
}
