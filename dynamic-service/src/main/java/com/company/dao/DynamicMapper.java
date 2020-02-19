package com.company.dao;

import com.company.domain.Dynamic;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface DynamicMapper {
    /**
     * 发布动态
     * @param dynamic
     * @return
     */
    public int write(Dynamic dynamic);

    public List<Dynamic> getAllDynamic(Long uid,Long currentPage);

    public Dynamic getDynamicById(Long id);

    List<Dynamic> getUserDynamic(Long uid);

    public Integer getStartCountByUid(Long uid);

    public void updateVote(Long uid,Long did,Integer num);

    public void saveVoteRelation(Long uid,Long did);

    public void deleteVoteRelation(Long uid,Long did);

    void deleteDynamic(Long id);
}
