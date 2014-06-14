package com.unlimitedrealm.service;

import com.unlimitedrealm.domain.Comment;
import com.unlimitedrealm.repository.CommentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentService {

    @Autowired
    CommentRepository commentRepository;

    public void save(Comment comment) {
        try {
            commentRepository.saveOrUpdate(comment);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public List<Comment> findAllPublished(String sku) {
        return commentRepository.findAllPublished(sku);
    }

    public List<Comment> findAll() {
        return commentRepository.findAll();
    }


    public void publish(String commentId) {
         commentRepository.publish(commentId);
    }
}
