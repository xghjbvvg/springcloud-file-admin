package com.company.domain;

import lombok.Data;

@Data
public class Question {
    private Long id;
    private String content;
    private String title;
    private String date;
    private String fromEmail;//用户邮箱
    private Integer flag;
}
