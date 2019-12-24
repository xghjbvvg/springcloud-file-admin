package com.company.domain;

import lombok.Data;

@Data
public class Message {
    private String mid;
    private String message;
    private String date;
    private String from;
    private String to;
    private Integer flag;
    private Integer isRead;
}
