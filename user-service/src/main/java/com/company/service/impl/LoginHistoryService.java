package com.company.service.impl;

import com.company.dao.LoginHistoryRepository;
import com.company.dao.UserRepository;
import com.company.service.ILoginHistoryService;
import com.company.vo.LoginHistory;
import com.netflix.discovery.converters.Auto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@Service
public class LoginHistoryService implements ILoginHistoryService {
    @Autowired
    LoginHistoryRepository loginHistoryRepository;
    @Autowired
    UserRepository userRepository;
    @Override
    public void insertHistory(LoginHistory history) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
        history.setDate(dateFormat.format(new Date()));
//        根据用户名或者电话号码查找uid，并且注入到history
        Long uid = userRepository.getUid(history.getUser());
        history.getUser().setId(uid);
        System.out.println(history);
        loginHistoryRepository.insertHistory(history);
    }

    @Override
    public List<LoginHistory> findLoginHistory(String username) {
        List<LoginHistory> loginHistory = loginHistoryRepository.findLoginHistory(username);
        System.out.println(loginHistory);
        return loginHistory;
    }
}
