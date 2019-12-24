package com.company.repository;

import com.company.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 * Created by hcx on 2019/9/24.
 *
 * @author 黄炽鑫
 */
@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    User findByUsername(String username);

    /**
     * 更新密码
     * @param uid
     * @param password
     */
    @Transactional
    @Modifying
    @Query("update User u set u.password = ?2 where u.id =?1")
    public void updatePassByUid(Long uid,String password);
}
