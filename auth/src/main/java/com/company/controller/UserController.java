package com.company.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.security.Principal;

/**
 * Created by hcx on 2019/9/24.
 *
 * @author 黄炽鑫
 */
@RestController
@RequestMapping("/auth")
public class UserController {
    @GetMapping("/user")
    public Principal user(Principal user){
        return user;
    }
}
