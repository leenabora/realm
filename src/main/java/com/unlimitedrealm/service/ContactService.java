package com.unlimitedrealm.service;

import com.unlimitedrealm.domain.Contact;
import com.unlimitedrealm.repository.ContactRepository;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContactService {

    ContactRepository contactRepository;

    public void save(Contact contact) {
        try {
            contactRepository.saveOrUpdate(contact);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public List<Contact> findAll() {
        return contactRepository.findAll();
    }


}
