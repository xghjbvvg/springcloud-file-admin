package com.company.domain;

import lombok.Data;

import java.io.Serializable;

@Data
public class Message implements Serializable {
    private String mid;
    private String message;
    private String date;
    private String from;
    private String to;
    private Integer flag;
    private Integer isRead;
}
