package com.company.vo;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.ToString;

import java.io.Serializable;
import java.util.Date;

@Data
@AllArgsConstructor
@ToString
public class FileVo implements Serializable {

    private static final long serialVersionUID = -6956947981866795431L;

    private Long id;
    private String name;
    private String md5;
    private String path;
    private Date uploadTime;
    private String absolutePath;
    private String parentPath;
    private Long uid;
    private String url;

    public FileVo() {
    }
    public FileVo(String name, String md5, String path, Date uploadTime) {
        this.name = name;
        this.md5 = md5;
        this.path = path;
        this.uploadTime = uploadTime;

    }

}