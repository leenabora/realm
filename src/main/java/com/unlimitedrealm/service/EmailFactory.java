package com.unlimitedrealm.service;

import com.unlimitedrealm.domain.Contact;
import org.antlr.stringtemplate.StringTemplate;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Component;

@Component
public class EmailFactory {

    @Value("${logo}")
    String logo;

    private final StringTemplate thanksForContactingEmail;
    private final StringTemplate contactNotification;

    public EmailFactory() {
        try {
            ClassPathResource cpr = new ClassPathResource("email_templates/thanksForContacting.html");
            thanksForContactingEmail = new StringTemplate(IOUtils.toString(cpr.getInputStream()));

            cpr = new ClassPathResource("email_templates/contactNotification.html");
            contactNotification = new StringTemplate(IOUtils.toString(cpr.getInputStream()));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }

    public String thanksForContacting(Contact contact) {
        thanksForContactingEmail.setAttribute("name", contact.getName());
        thanksForContactingEmail.setAttribute("logo", logo);
        return thanksForContactingEmail.toString();
    }

    public String contactNotification(Contact contact) {
        contactNotification.setAttribute("name", contact.getName());
        contactNotification.setAttribute("email", contact.getEmail());
        contactNotification.setAttribute("phone", contact.getPhone());
        contactNotification.setAttribute("country", contact.getCountry());
        contactNotification.setAttribute("message", contact.getMessage());
        return contactNotification.toString();
    }
}
