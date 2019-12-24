package com.company.domain;

import lombok.Data;

/**
 * 〈响应实体〉
 *
 * @author hcx
 */
@Data
public class Result {

    private int code;
    private String message;
    private Object data;

}
