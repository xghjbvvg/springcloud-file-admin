package com.company.dao;

import com.company.vo.LoginHistory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface LoginHistoryRepository {

    public void  insertHistory(LoginHistory history);

    public List<LoginHistory> findLoginHistory(String username);
}
