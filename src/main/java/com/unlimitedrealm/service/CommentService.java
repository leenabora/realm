package com.unlimitedrealm.service;

import com.unlimitedrealm.domain.Comment;
import com.unlimitedrealm.repository.CommentRepository;
import com.unlimitedrealm.utils.MailUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CommentService {

    @Autowired
    CommentRepository commentRepository;

    @Autowired
    MailUtils mailUtils;

    @Autowired
    EmailFactory emailFactory;


    public void save(Comment comment) {
        try {
            commentRepository.saveOrUpdate(comment);
            new RunMailService(comment).start();
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

    class RunMailService extends Thread {

        private Comment comment;

        RunMailService(Comment comment) {
            this.comment = comment;
        }

        @Override
        public void run() {
            try {
                String commentNotification = emailFactory.commentNotification(comment);
                mailUtils.sendMail("leenabora1@gmail.com", "Comment request", commentNotification);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}
