package com.company.dao;

import com.company.domain.Group;
import com.company.domain.User;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface UserRepository {
    /**
     * 用户注册
     * @param user
     * @return
     */
    public Long register(User user);

    /**
     *插入用户角色
     * @param uid
     */
    public void insertUser_Role(Long uid);

    public void deleteUser_role(Long id);

    public void deleteUser(User user);

    /**
     * 根据用户名获取用户
     * @param username
     * @return
     */
    public User getUser(String username);

    /**
     * 是否存在用户
     * @param username
     * @return
     */
    public int isExistUsername(String username);

    /**
     * 判断电话是否已经注册
     * @param phone
     * @return
     */
    public int isExistPhone(String phone);

    /**
     * 邮箱是否已经注册
     * @param email
     * @return
     */
    public int isExistEmail(String email);

    /**
     * 根据用户名或者手机查找uid
     * @param user
     * @return
     */
    public Long getUid(User user);

    /**
     * 更新昵称
     *
     */
    public void updateUsername(User user);

    /**
     * 更新电话号码
     *
     */
    public void updatePhone(User user);

    /**
     * 更新邮箱
     *
     */
    public void updateEmail(User user);

    /**
     * 更新密码
     *
     */
    public void updatePass(User user);

    public void updateImageUrl(User user);


    List<Group> getAllGroup();
}
