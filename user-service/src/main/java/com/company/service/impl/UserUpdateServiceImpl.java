package com.company.service.impl;

import com.company.dao.UserRepository;
import com.company.domain.User;
import com.company.service.IUserUpdateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

@Service
public class UserUpdateServiceImpl implements IUserUpdateService {

    @Autowired
    UserRepository userRepository;

    BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();


    @Override
    public void updateUsername(User user) {
        userRepository.updateUsername(user);
    }

    @Override
    public void updatePhone(User user) {
        userRepository.updatePhone(user);
    }

    @Override
    public void updateEmail(User user) {
        userRepository.updateEmail(user);
    }

    @Override
    public String updatePass(User user) {
//      密码加密
        String encode = passwordEncoder.encode(user.getPassword());
        user.setPassword(encode);
        userRepository.updatePass(user);
        return encode;
    }
    @Override
    public void updateImageUrl(User user){
        userRepository.updateImageUrl(user);
    }

    @Override
    public Boolean updatePassByEmail(User user) {
        try{
            //密码加密
            String encode = passwordEncoder.encode(user.getPassword());
            user.setPassword(encode);
            userRepository.updatePassByEmail(user);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }

    }
}
