package com.company.service;

import com.company.domain.Comment;

import java.util.List;

public interface ICommentService {
    Boolean saveComment(Comment comment);

    Boolean deleteComment(Comment comment);

    List<Comment> getAllComments(Long dynamicId);
}
