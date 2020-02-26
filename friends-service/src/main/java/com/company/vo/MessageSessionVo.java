package com.company.vo;

import lombok.Data;

import java.util.Date;

@Data
public class MessageSessionVo {
    private Long to;
    private Long from;
    private String imageUrl;
    private String username;
    private String message;
    private Integer flag;
    private Integer unread;
    private Date date;
}
