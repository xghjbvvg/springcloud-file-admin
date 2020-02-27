package com.company.dao;

import com.company.domain.Question;
import org.springframework.stereotype.Repository;

@Repository
public interface QuestionMapper {
    int saveQuestion(Question question);
}
