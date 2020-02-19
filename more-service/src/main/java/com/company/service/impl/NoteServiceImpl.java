package com.company.service.impl;

import com.company.dao.NoteMapper;
import com.company.domain.Note;
import com.company.service.INoteService;
import com.company.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
@Service
public class NoteServiceImpl implements INoteService {
    @Autowired
    NoteMapper noteMapper;
    @Override
    public Boolean saveNote(Note note) {
        try{
            noteMapper.saveNote(note);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public List<Note> getAllNotes(Note note) {
        Date date = note.getDateVo();
        //判断是否为当前月
        //boolean isCurrentMonth = DateUtil.isThisMonth(date.getTime());
        //获取指定时间年份
        int year = DateUtil.getYearOfDate(date);
        //获取指定时间月份
        int month = DateUtil.getMouthOfDate(date);
        //获取指定时间月份开始时间
        Date monthStart = DateUtil.getBeginTime(year,month);

        //获取指定时间月份结束时间
        Date monthEnd = DateUtil.getEndTime(year,month);
        List<Note> allNotes = noteMapper.getAllNotes(note.getUser().getId(), monthStart, monthEnd);
        SimpleDateFormat format = new SimpleDateFormat("yyyy/MM/dd");
        for (int i = 0; i < allNotes.size(); i++) {
            Note note1 = allNotes.get(i);
            note1.setDate(format.format(note1.getDateVo()));
        }
        return allNotes;

    }

    @Override
    public Boolean updateNote(Note note) {
        try{
            noteMapper.updateNote(note);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public Boolean deleteNote(Long id) {
        try{
            noteMapper.deleteNote(id);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public Note getById(Long id) {
        return noteMapper.getById(id);
    }
}
