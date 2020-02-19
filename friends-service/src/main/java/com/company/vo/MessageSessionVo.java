package com.company.vo;

import lombok.Data;

import java.util.Date;

@Data
public class MessageSessionVo {
    private Long to;
    private String image_url;
    private String username;
    private String message;
    private Boolean flag;
    private Integer unread;
    private Date date;
}
