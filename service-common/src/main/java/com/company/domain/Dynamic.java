package com.company.domain;

import lombok.Data;

@Data
public class Dynamic {
    private Long id;
    private String content;
    private String htmlContent;
    private String date;
    private Integer starCount;
    private User user;
    private String firstImage;
    private Integer visible;
    private Boolean isStar ;
}
