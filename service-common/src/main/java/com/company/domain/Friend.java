package com.company.domain;

import lombok.Data;

@Data
public class Friend {
    private Long id;
    private Long friendId;
    private String date;
    private String remark;
    private User user;
}
