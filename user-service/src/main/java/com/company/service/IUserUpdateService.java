package com.company.service;

import com.company.domain.User;

public interface IUserUpdateService {
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
     * @return
     */
    public String updatePass(User user);

    void updateImageUrl(User user);

    Boolean updatePassByEmail(User user);
}
