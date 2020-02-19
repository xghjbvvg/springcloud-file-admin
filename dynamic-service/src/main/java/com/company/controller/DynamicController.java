package com.company.controller;

import com.company.domain.Comment;
import com.company.domain.Dynamic;
import com.company.service.IDynamicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/dynamic")
public class DynamicController {
    @Autowired
    IDynamicService dynamicService;

    @RequestMapping("/write")
    public Boolean write(@RequestBody  Dynamic dynamic){
        System.out.println(dynamic  );
        return dynamicService.write(dynamic);
    }
    @RequestMapping("/getAllDynamic")
    public List<List<Dynamic>> getAllDynamic(Long uid,Long currentPage) {
        return dynamicService.getAllDynamic(uid,currentPage);
    }
    @RequestMapping("/getDynamicById")
    public Dynamic getDynamicById(Long id){
        return dynamicService.getDynamicById(id);
    }

    @RequestMapping("/deleteDynamic")
    public Boolean deleteDynamic(Long id){
        return dynamicService.deleteDynamic(id);
    }

    @RequestMapping("/getUserDynamic")
    public List<Dynamic> getUserDynamic(Long uid) {
        return dynamicService.getUserDynamic(uid);
    }


    @RequestMapping("/hello")
    public String wriet(){
        return "hello,world";
    }

    @RequestMapping("/getAllStar")
    public Integer getStartCountByUid(Long uid) {
        return dynamicService.getStartCountByUid(uid);
    }


    @RequestMapping("/vote")
    public Boolean vote(Long uid,Long did,Integer num){
        return dynamicService.updateVote(uid, did, num);
    }
}
