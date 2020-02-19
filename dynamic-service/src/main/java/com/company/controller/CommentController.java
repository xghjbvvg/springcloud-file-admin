package com.company.controller;

import com.company.domain.Comment;
import com.company.service.ICommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/dynamic/comment")
public class CommentController {
    @Autowired
    ICommentService commentService;
    @RequestMapping("/save")
    public Boolean saveComment(@RequestBody Comment comment){
        return commentService.saveComment(comment);
    }

    @RequestMapping("/delete")
    Boolean deleteComment(@RequestBody Comment comment){
        return commentService.deleteComment(comment);
    }
    @RequestMapping("/getAll")
    List<Comment> getAllComments(Long dynamicId){
        return commentService.getAllComments(dynamicId);
    }
}
