package com.company.service.impl;

import com.company.dao.CommentMapper;
import com.company.domain.Comment;
import com.company.service.ICommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * 一级评论服务
 */
@Service
public class CommentServiceImpl implements ICommentService {

    @Autowired
    CommentMapper commentMapper;
    /**
     * 保存
     * @param comment
     * @return
     */
    @Override
    public Boolean saveComment(Comment comment) {
        try{
            int i = commentMapper.saveComment(comment);
            if(i > 0){
                return true;
            }
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
        return false;
    }

    /**
     * 删除,根据评论id与用户id
     * @param comment
     * @return
     */
    @Override
    @Transactional
    public Boolean deleteComment(Comment comment) {
        try{
            int i = commentMapper.deleteComment(comment);
            if(i > 0){
                return true;
            }
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
        return false;
    }

    /**
     * 获取所有评论，根据动态id
     * @param dynamicId
     * @return
     */
    @Override
    public List<Comment> getAllComments(Long dynamicId) {
        return commentMapper.getAllComments((dynamicId));
    }
}
