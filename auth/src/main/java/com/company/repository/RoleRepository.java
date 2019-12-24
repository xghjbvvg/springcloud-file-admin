package com.company.repository;

import com.company.domain.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
/**
 * Created by hcx on 2019/9/24.
 *
 * @author 黄炽鑫
 */

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
}
