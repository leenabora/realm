package com.unlimitedrealm.service;

import com.unlimitedrealm.domain.Contact;
import com.unlimitedrealm.repository.ContactRepository;
import com.unlimitedrealm.utils.MailUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContactService {

    @Autowired
    ContactRepository contactRepository;

    @Autowired
    MailUtils mailUtils;

    @Autowired
    EmailFactory emailFactory;

    public void save(Contact contact) {
        try {
            contactRepository.saveOrUpdate(contact);

            new RunMailService(contact).start();

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }


    public List<Contact> findAll() {
        return contactRepository.findAll();
    }

    class RunMailService extends Thread {

        private Contact contact;

        RunMailService(Contact contact) {
            this.contact = contact;
        }

        @Override
        public void run() {
            try {
                String thanksForContacting = emailFactory.thanksForContacting(contact);
                mailUtils.sendMail(contact.getEmail(), "Thanks for contacting", thanksForContacting);

                String contactNotification = emailFactory.contactNotification(contact);
                mailUtils.sendMail("leenabora1@gmail.com", "Contact request", contactNotification);
            } catch (Exception e) {
                throw new RuntimeException(e);
            }
        }
    }
}
