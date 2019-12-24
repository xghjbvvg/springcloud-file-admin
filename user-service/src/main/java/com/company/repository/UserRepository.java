package com.company.repository;

import org.springframework.stereotype.Repository;

/**
 * Created by hcx on 2019/9/24.
 *
 * @author 黄炽鑫
 */
@Repository
public interface UserRepository{

    public void updatePassByUid(Long uid, String password);
}
