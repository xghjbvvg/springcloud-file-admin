package com.company.domain;

import lombok.Data;

import java.util.Date;

@Data
public class Note {
    private Long id;
    private String title;
    private String content;
    private String htmlContent;
    private String date;
    private Date dateVo;
    private String customClass = "disabled highlight";
    private User user;
}
