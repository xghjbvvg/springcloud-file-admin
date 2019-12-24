package com.company;

import com.company.domain.User;
import com.company.service.IUserUpdateService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class UserServiceApplicationTests {

    @Autowired
    IUserUpdateService userUpdateService;
    @Test
    public void contextLoads() {
        User user = new User();
        user.setId(1L);
        user.setPassword("19971030hcx");
        userUpdateService.updatePass(user);
    }

}
