package com.unlimitedrealm.service;

import com.unlimitedrealm.domain.Comment;
import com.unlimitedrealm.repository.CommentRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentService {

    CommentRepository commentRepository;

    public void save(Comment comment) {
        try {
            commentRepository.saveOrUpdate(comment);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public List<Comment> findAll() {
        return commentRepository.findAll();
    }


}
