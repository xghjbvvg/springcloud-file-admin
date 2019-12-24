package com.company.domain;

import lombok.Data;

import java.util.List;

@Data
public class Group {
    private Long id;
    private Long groupId;
    private String date;
    private String groupName;
    private String groupImagePath;
    private List<User> users;
}
