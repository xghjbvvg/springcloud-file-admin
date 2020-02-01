package com.company.dao;

import com.company.domain.Group;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface GroupMapper {

    List<Group> getAllGroup(Long uid);

    int checkCode(Long code);
}
