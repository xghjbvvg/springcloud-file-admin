package com.company.service.impl;

import com.company.dao.UserMapper;
import com.company.domain.User;
import com.company.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class UserServiceImpl implements IUserService {
    @Autowired
    UserMapper userMapper;
    @Override
    public List<User> getAllUser(User user) {
        return userMapper.getAllUser(user);
    }

    @Override
    public Boolean changeRole(List<Integer> uidList, Integer roleId) {
        try{
            userMapper.changeRole(uidList,roleId);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }

    }

    @Override
    public List<User> getUsersByRole(Long roleId) {
        return userMapper.getUsersByRole(roleId);
    }
}
