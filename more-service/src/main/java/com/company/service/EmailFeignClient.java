package com.company.service;

import com.company.domain.Email;
import com.company.service.impl.EmailHystrix;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
@Service
@FeignClient(value = "email-service",fallback = EmailHystrix.class)
public interface EmailFeignClient {

    @RequestMapping("/email/sendLetterByEmail")
    public Boolean sendLetterByEmail(@RequestBody List<Email> emails);
}
