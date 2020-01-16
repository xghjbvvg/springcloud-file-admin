package com.company.dao;

import com.company.domain.FileUser;
import com.company.vo.FileVo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FileUserMapper {
    /**
     * 通过主键获取数据
     *
     * @return
     */
    List<FileVo> findByUid(Long uid, String parentName, boolean flag);


    /**
     * 插入一行数据
     *
     * @param
     * @return
     */
    int save(FileUser fileUser);

    /**
     * 删除一行数据
     *
     * @param id
     * @return
     */
    int deleteById(Long id);

    List<FileVo> findFileByType(String path, String regex, String userId, Boolean flag);

    List<FileVo> findByKey(String key, String userId);

    /**
     * 根据一个或多个属性获取File
     *
     * @param fileVo
     * @return
     */
    FileVo getByFile(FileVo fileVo);


}
