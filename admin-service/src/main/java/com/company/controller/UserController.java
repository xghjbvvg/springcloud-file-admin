package com.company.controller;

import com.company.domain.User;
import com.company.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/admin")

public class UserController {

    @Autowired
    IUserService userService;

    @RequestMapping("/getAllUser")
    @PreAuthorize("hasAnyAuthority('getAllUser')")
    public List<User> getAllUser(@RequestBody User user) {
        return userService.getAllUser(user);
    }
    @RequestMapping("/changeRole")
    @PreAuthorize("hasAnyAuthority('changeRole')")
    public Boolean changeRole(@RequestBody  List<Integer> uidList, Integer roleId) {
        return userService.changeRole(uidList,roleId);
    }

    @RequestMapping("/getUsersByRole")
    @PreAuthorize("hasAnyAuthority('getUsersByRole')")
    public List<User> getUsersByRole(Long roleId) {
        return userService.getUsersByRole(roleId);
    }
}
