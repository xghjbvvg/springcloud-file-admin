package com.company.service;

import com.company.domain.Note;

import java.util.Date;
import java.util.List;

public interface INoteService {
    /**
     * 保存事件信息
     * @param note
     */
    public Boolean saveNote(Note note);

    /**
     * 获取指定时间段事件信息
     * @param
     *
     */
    public List<Note> getAllNotes(Note note);

    /**
     * 更新事件信息
     * @param note
     */
    public Boolean updateNote(Note note);

    /**
     * 删除事件信息
     * @param id
     */
    public Boolean deleteNote(Long  id);

    Note getById(Long id);
}
