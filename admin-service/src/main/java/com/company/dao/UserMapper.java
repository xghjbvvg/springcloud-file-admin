package com.company.dao;

import com.company.domain.User;

import java.util.List;

public interface UserMapper {

     List<User> getAllUser(User user);

     void changeRole(List<Integer> uidList,Integer roleId);

     List<User> getUsersByRole(Long roleId);
}
