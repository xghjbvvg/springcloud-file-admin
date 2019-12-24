package com.company.service;

import com.company.vo.LoginHistory;

import java.util.List;

public interface ILoginHistoryService {
    /**
     * 插入记录
     * @param history
     */
    public void insertHistory(LoginHistory history);

    public List<LoginHistory> findLoginHistory(String username);


}
