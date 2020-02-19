package com.company.service;

import com.company.domain.Email;
import com.company.domain.Question;
import com.company.service.impl.EmailHystrix;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Service
@FeignClient(value = "email-service",fallback = EmailHystrix.class)
public interface EmailFeignClient {

    @RequestMapping("/email/sendQuestionToAdminByEmail")
    public Boolean sendLetterByEmail(@RequestBody Question question);
}
