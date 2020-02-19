package com.company.domain;

import lombok.Data;

@Data
public class Email {
    private Long id;
    private String content;
    private String htmlContent;
    private String date;
    private Integer year;
    private User user;
}
