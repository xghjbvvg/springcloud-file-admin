package com.company.dao;

import com.company.vo.FileVo;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface FileMapper {
    /**
     * 通过主键获取一行数据
     *
     * @return
     */
    List<FileVo> getById(Long id, String path);

    /**
     * 插入一行数据
     *
     * @param fileVo
     * @return
     */
    int save(FileVo fileVo);



    /**
     * 更新一行数据
     *
     * @param fileVo
     * @return
     */
    int update(FileVo fileVo);

    /**
     * 删除一行数据
     *
     * @param id
     * @return
     */
    int deleteById(Long id);


    void deleteData(String path,Long uid,boolean isFolder);

    void  deleteInitData(String name);

    /**
     * 根据一个或多个属性获取File
     *
     * @param fileVo
     * @return
     */
    FileVo getByFile(FileVo fileVo);


    List<FileVo> findFileByType(String path, String regex, String userId, Boolean flag);

    List<FileVo> findByKey(String key, String userId);

}
