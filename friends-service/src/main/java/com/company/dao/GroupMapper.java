package com.company.dao;

import com.company.domain.Group;

import java.util.List;

public interface GroupMapper {

    List<Group> getAllGroup(Long uid);

    int checkCode(Long code);
}
