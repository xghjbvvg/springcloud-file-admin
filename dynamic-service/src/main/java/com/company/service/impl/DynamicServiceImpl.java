package com.company.service.impl;

import com.company.dao.DynamicMapper;
import com.company.domain.Dynamic;
import com.company.service.IDynamicService;
import com.company.util.ListUtil;
import com.company.util.RegexUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

@Service
public class DynamicServiceImpl implements IDynamicService {

    @Autowired
    DynamicMapper dynamicMapper;
    @Override
    public Boolean write(Dynamic dynamic) {
        try{
            if (dynamic.getFirstImage().length() == 0) {
                List<String> imageOfStr = RegexUtil.getImageOfStr(dynamic.getContent());
                if(imageOfStr.size() != 0){
                    dynamic.setFirstImage(imageOfStr.get(0));
                }
            }
            int write = dynamicMapper.write(dynamic);
            if(write > 0){
                return true;
            }
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
        return false;
    }

    @Override
    public List<List<Dynamic>>  getAllDynamic(Long uid,Long currentPage) {
        List<Dynamic> dynamics = dynamicMapper.getAllDynamic(uid,(currentPage-1)*9);//(#{currentPage}-1)*9

        //将数据等份成三份，封装成二维数据

        List<List<Dynamic>> lists = ListUtil.splitList(dynamics, dynamics.size() / 3);
        return lists;

    }

    @Override
    public Dynamic getDynamicById(Long id) {
        return dynamicMapper.getDynamicById(id);
    }

    @Override
    public List<Dynamic> getUserDynamic(Long uid) {
        return dynamicMapper.getUserDynamic(uid);
    }

    @Override
    public Integer getStartCountByUid(Long uid) {
        return dynamicMapper.getStartCountByUid(uid);
    }

    /**
     * 更新点赞数以及与用户关系
     * @param uid
     * @param did
     * @param num
     * @return
     */
    @Override
    public Boolean updateVote(Long uid, Long did, Integer num) {
        try{
            //更新点赞数
            dynamicMapper.updateVote(uid,did,num);
            if(num > 0){
                //保存点赞与用户之间关系
                dynamicMapper.saveVoteRelation(uid,did);

            }else{
                //删除点赞与用户之间关系
                dynamicMapper.deleteVoteRelation(uid,did);
            }
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public Boolean deleteDynamic(Long id) {
        try{
            //更新点赞数
            dynamicMapper.deleteDynamic(id);

            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }


}
