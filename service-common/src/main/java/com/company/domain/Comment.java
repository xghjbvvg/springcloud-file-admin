package com.company.domain;

import lombok.Data;

@Data
public class Comment {
    private Long id;
    private String content;
    private String date;
    private Long dynamicId;
    private User user;
}
