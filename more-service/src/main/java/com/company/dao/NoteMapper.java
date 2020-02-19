package com.company.dao;

import com.company.domain.Email;
import com.company.domain.Note;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

@Repository
public interface NoteMapper {

    /**
     * 保存事件信息
     * @param note
     */
    public void saveNote(Note note);

    /**
     * 获取指定时间段事件信息
     * @param
     */
    public List<Note> getAllNotes(Long uid , Date startTime, Date endTime);

    /**
     * 更新事件信息
     * @param note
     */
    public void updateNote(Note note);

    /**
     * 删除事件信息
     * @param id
     */
    public void deleteNote(Long  id);


    Note getById(Long id);
}
