package com.company.domain;

import com.company.vo.FileItem;
import lombok.Data;

import java.io.Serializable;

@Data
public class Message implements Serializable {
    private String mid;
    private String message;
    private FileItem fileItem;
    private String date;
    private Long from;
    private Long toUser;
    private Integer flag;
    private Integer isRead;
    private User to;
}
