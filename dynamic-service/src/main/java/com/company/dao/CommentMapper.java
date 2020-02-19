package com.company.dao;

import com.company.domain.Comment;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface CommentMapper {

    int saveComment(Comment comment);

    int deleteComment(Comment comment);

    List<Comment> getAllComments(Long dynamicId);
}
