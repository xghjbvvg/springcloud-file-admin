package com.company.controller;

import com.company.domain.User;
import com.company.service.IUserUpdateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/user")
public class UserUpdateController {

    @Autowired
    IUserUpdateService userUpdateService;

    /**
     * 更新昵称
     *
     */
    @RequestMapping("/updateUsername")
    public void updateUsername(User user){
        System.out.println(user);
        userUpdateService.updateUsername(user);
    }

    /**
     * 更新电话号码
     *
     */
    @RequestMapping("/updatePhone")
    public void updatePhone(User user){
        userUpdateService.updatePhone(user);
    }

    /**
     * 更新邮箱
     *
     */
    @RequestMapping("/updateEmail")
    public void updateEmail(User user){
        userUpdateService.updateEmail(user);
    }

    /**
     * 更新密码
     *
     */
    @RequestMapping("/updatePass")
    public String updatePass(User user){
       return userUpdateService.updatePass(user);
    }

    @RequestMapping("/updatePassByEmail")
    public Boolean updatePassByEmail(User user){
        return userUpdateService.updatePassByEmail(user);
    }


    @RequestMapping("/updateImgUrl")
    public void updateImageUrl(User user){
         userUpdateService.updateImageUrl(user);
    }



}
