package com.unlimitedrealm.repository;

import com.mongodb.BasicDBObject;
import com.unlimitedrealm.domain.Comment;
import org.mongojack.DBCursor;
import org.mongojack.JacksonDBCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;

@Repository
public class CommentRepository {

    @Autowired
    DBConnection dbConnection;

    private JacksonDBCollection<Comment, String> commentCollection;

    @PostConstruct
    public void init() {
        commentCollection = JacksonDBCollection.wrap(dbConnection.getDb().getCollection("comments"), Comment.class, String.class);
    }

    public void saveOrUpdate(Comment comment) {
        commentCollection.save(comment);
    }


    public List<Comment> findAll(String sku) {
        DBCursor<Comment> commentCursor = commentCollection.find(new BasicDBObject("sku", sku));
        return buildCommentList(commentCursor);
    }

    private List<Comment> buildCommentList(DBCursor<Comment> cursor) {
        List<Comment> comments = new ArrayList<>();

        while (cursor.hasNext()) {
            Comment comment = cursor.next();
            comments.add(comment);
        }
        return comments;
    }


}


