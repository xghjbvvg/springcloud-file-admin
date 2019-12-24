package com.company.vo;

import com.company.domain.User;
import com.company.domain.base.BaseEntity;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Data
@Getter
@Setter
public class LoginHistory extends BaseEntity {
     private Long id;
     private String date;
     private String ip;
     private String way;
     private String device;
     private String browser;
     private User user;

}
