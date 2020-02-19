package com.company.service;

import com.company.domain.User;

import java.util.List;

public interface IUserService {
    /**
     * 查找所有用户
     * @param user
     * @return
     */
    List<User> getAllUser(User user);

    /**
     * 更新用户角色
     * @param uidList
     * @param roleId
     */
    Boolean changeRole(List<Integer> uidList,Integer roleId);

    List<User> getUsersByRole(Long roleId);
}
