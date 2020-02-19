package com.company.controller;

import com.company.domain.Note;
import com.company.service.INoteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.text.ParseException;
import java.util.List;
@RestController
@RequestMapping("/more/note")
public class NoteController {
    @Autowired
    INoteService noteService;
    /**
     * 保存事件信息
     * @param note
     */
    @RequestMapping("/save")
    public Boolean saveNote(@RequestBody  Note note){
        return noteService.saveNote(note);
    }

    /**
     * 获取指定时间段事件信息
     * @param
     *
     */
    @RequestMapping("/getAll")
    public List<Note> getAllNotes(@RequestBody  Note note) throws ParseException {
        return noteService.getAllNotes(note);
    }

    @RequestMapping("/getById")
    public Note getById(Long id){
        return noteService.getById(id);
    }


    /**
     * 更新事件信息
     * @param note
     */
    @RequestMapping("/update")
    public Boolean updateNote(@RequestBody  Note note){
        return noteService.updateNote(note);
    }

    /**
     * 删除事件信息
     * @param id
     */
    @RequestMapping("/delete")
    public Boolean deleteNote(Long  id){
        return noteService.deleteNote(id);
    }

}
