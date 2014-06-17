package com.unlimitedrealm.repository;

import com.mongodb.DB;
import com.mongodb.MongoClient;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import javax.annotation.PreDestroy;
import java.net.UnknownHostException;

@Component
@Qualifier("dbConnection")
public class DBConnection {
    private DB db;

    public DBConnection() {
        try {
            db = new MongoClient().getDB("realm");
        } catch (UnknownHostException e) {
            throw new RuntimeException("cannot connect to database", e);
        }
    }

    public DB getDb() {
        return db;
    }

    @PreDestroy
    public void cleanup() {
        db.getMongo().close();
    }
}
