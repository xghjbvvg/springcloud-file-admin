package com.company.service.impl;

import com.company.dao.UserRepository;
import com.company.domain.User;
import com.company.service.IFileService;
import com.company.service.IUserservice;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.text.SimpleDateFormat;
import java.util.Date;

@Service
public class UserServiceImpl implements IUserservice {
    @Autowired
    UserRepository userRepository;

    @Resource
    IFileService fileService;

    BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

    @Transactional
    @Override
    public Long register(User user) {
//日期格式化
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss") ;
        user.setCreateTime(dateFormat.format(new Date()));
        System.out.println(user);
//        密码加密
        user.setPassword(passwordEncoder.encode(user.getPassword()));
//        写入数据库
        Long userById = userRepository.register(user);
        System.out.println(user.getId());
        userRepository.insertUser_Role(user.getId());
        fileService.initFile(user.getId());
        return user.getId();
    }

    @Override
    public User getUser(String username){
        return userRepository.getUser(username);
    }

    @Override
    @Transactional
    public void deleteUser(User user){
//         userRepository.deleteUser_role(user.getId());

         userRepository.deleteUser(user);
        fileService.deleteUserFile(user.getId());
    }

    @Override
    public Boolean isExistUsername(String username) {
        return isExist("username",username);
    }

    @Override
    public Boolean isExistPhone(String phone) {
        return isExist("phone",phone);
    }

    @Override
    public Boolean isExistEmail(String email) {
        return isExist("email",email);
    }

    public Boolean isExist(String type,String value) {
        int isExist = -1;
        if (type == "username") {
             isExist = userRepository.isExistUsername(value);
        } else if (type == "phone") {
            isExist = userRepository.isExistPhone(value);
        } else{
            isExist = userRepository.isExistEmail(value);
        }
        if (isExist >= 1) {
            return false;
        }
        return true;
    }
}
