package com.company.controller;

import com.company.domain.User;
import com.company.service.IUserservice;
import com.company.util.MessageCode;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;

@RestController
@RequestMapping("/user")
public class UserController {
    @Autowired
    IUserservice userservice;



    @GetMapping("/register")
    public Long register(User user){

        return userservice.register(user);
    }

    @RequestMapping("/getUser")
    public User getUser(User user){
        return userservice.getUser(user);
    }



    @RequestMapping("/deleteUser")
    public void deleteUser(User user){
        userservice.deleteUser(user);
    }

    @GetMapping("/isExistUsername")
    public  Boolean isExistUsername(String username){
        return userservice.isExistUsername(username);
    }

    @GetMapping("/isExistPhone")
    public Boolean isExistPhone(String phone){
        return userservice.isExistPhone(phone);
    }

    @GetMapping("/isExistEmail")
    public Boolean isExistEmail(String email){
        return userservice.isExistEmail(email);
    }

    @GetMapping("/verificationCode")
    public void verificateCode(String phone){
        try {
             MessageCode.execute(phone);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }



    @GetMapping("/current")
    public Principal user(Principal principal) {
        return principal;
    }

    @GetMapping("/query")
//    @PreAuthorize("hasAnyAuthority('query')")
    public String query() {
        return "具有query权限";
    }
}
