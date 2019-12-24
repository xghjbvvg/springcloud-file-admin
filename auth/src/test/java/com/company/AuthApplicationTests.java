package com.company;

import com.company.domain.User;
import com.company.repository.UserRepository;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
public class AuthApplicationTests {

    @Autowired
    BCryptPasswordEncoder bCryptPasswordEncoder;
    @Autowired
    UserRepository userRepository;
    @Test
    public void contextLoads() {
        String encode = bCryptPasswordEncoder.encode("123456");
        userRepository.updatePassByUid(1L,encode);
        User fpf = userRepository.findByUsername("fpf");
        System.out.println(bCryptPasswordEncoder.matches("123456",fpf.getPassword()));
    }

}
