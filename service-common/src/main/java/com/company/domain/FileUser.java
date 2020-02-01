package com.company.domain;

import lombok.Data;

import java.io.Serializable;
@Data
public class FileUser implements Serializable {
    private Long uid;
    private Long fid;
    private String createTime;
    private String name;
    private String parentId;
    private String parentPath;
    private Boolean flag;
    private Boolean isRoot;
    private String path;
}
