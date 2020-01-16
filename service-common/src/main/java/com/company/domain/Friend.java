package com.company.domain;

import lombok.Data;

import java.io.Serializable;

@Data
public class Friend implements Serializable {
    private Long id;
    private Long friendId;
    private String date;
    private String remark;
    private User user;
}
