package com.company.service;

import com.company.domain.User;
import org.apache.ibatis.annotations.SelectKey;

public interface IUserservice {
    /**
     * 用户注册
     * @param user
     * @return
     */
//    @SelectKey(keyColumn = "id",keyProperty = "id",before = false,
//            resultType = Long.class,
//                statement="SELECT max(id) from `user`")
    public Long register(User user);

    User getUser(User user);

    /**
     * 删除用户
     * @param user
     */
    void deleteUser(User user);

    /**
     * 是否存在用户
     * @param username
     * @return
     */
    public Boolean isExistUsername(String username);

    /**
     * 判断电话是否已经注册
     * @param phone
     * @return
     */
    public Boolean isExistPhone(String phone);

    /**
     * 邮箱是否已经注册
     * @param email
     * @return
     */
    public Boolean isExistEmail(String email);

}
