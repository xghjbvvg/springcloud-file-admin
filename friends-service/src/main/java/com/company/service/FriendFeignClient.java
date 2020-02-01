package com.company.service;

import com.company.config.FeignConfig;
import com.company.domain.User;
import com.company.service.impl.FriendHystrixService;
import com.company.vo.FileItem;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.*;

@Service
@FeignClient(value = "file-service",configuration = FeignConfig.class)
public interface FriendFeignClient {

    @RequestMapping(value = "/file/fileShare?access_token=e2c041de-7122-40d5-ada1-51e6bbbb3e96",method = RequestMethod.POST)
    public Boolean fileShare(String access_token);
}
