package com.unlimitedrealm.repository;

import com.unlimitedrealm.domain.Contact;
import org.mongojack.DBCursor;
import org.mongojack.JacksonDBCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;

@Repository
public class ContactRepository {

    @Autowired
    DBConnection dbConnection;

    private JacksonDBCollection<Contact, String> contactCollection;

    @PostConstruct
    public void init() {
        contactCollection = JacksonDBCollection.wrap(dbConnection.getDb().getCollection("contacts"), Contact.class, String.class);
    }

    public void saveOrUpdate(Contact contact) {
        contactCollection.save(contact);
    }


    public List<Contact> findAll() {
        DBCursor<Contact> contactCursor = contactCollection.find();
        return buildContactList(contactCursor);
    }

    private List<Contact> buildContactList(DBCursor<Contact> cursor) {
        List<Contact> contacts = new ArrayList<>();

        while (cursor.hasNext()) {
            Contact contact = cursor.next();
            contacts.add(contact);
        }
        return contacts;
    }


}
