package com.company.service;

import com.company.domain.Dynamic;

import java.util.List;

public interface IDynamicService {
    /**
     * 发布动态
     *
     * @param dynamic
     * @return
     */
    public Boolean write(Dynamic dynamic);

    /**
     * 获取用户所有动态
     *
     * @param uid
     * @param currentPage
     * @return
     */
    public List<List<Dynamic>> getAllDynamic(Long uid, Long currentPage);

    /**
     * 通过动态id获取其详细情况
     *
     * @param id
     * @return
     */
    public Dynamic getDynamicById(Long id);

    /**
     * 获取用户动态
     * @param uid
     * @return
     */
    List<Dynamic> getUserDynamic(Long uid);

    /**
     * 获取用户总赞数
     *
     * @param uid
     * @return
     */
    public Integer getStartCountByUid(Long uid);

    /**
     * 更新动态点赞数
     *
     * @param uid
     * @param did
     * @param num
     */
    public Boolean updateVote(Long uid, Long did, Integer num);

    Boolean deleteDynamic(Long id);
}
