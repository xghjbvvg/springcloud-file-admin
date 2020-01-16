package com.company.vo;

import lombok.Data;

import java.io.Serializable;

@Data
public class FileItem implements Serializable {
    private String name;
    private String path;
    private String parentName;
    private String absolutePath;
    private String url;
    private Long dateMillis;
    private String date;
    private String size;
    private Long realSize;
    private Boolean isFolder;
}
