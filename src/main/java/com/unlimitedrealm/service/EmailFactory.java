package com.unlimitedrealm.service;

import com.unlimitedrealm.domain.Comment;
import com.unlimitedrealm.domain.Contact;
import org.antlr.stringtemplate.StringTemplate;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.core.io.ClassPathResource;
import org.springframework.stereotype.Component;

@Component
public class EmailFactory {

    @Value("${imagePath}")
    String imagePath;

    @Value("${productImage}")
    String productImage;

    private final StringTemplate thanksForContactingEmail;
    private final StringTemplate contactNotification;
    private final StringTemplate commentNotification;

    public EmailFactory() {
        try {
            ClassPathResource cpr = new ClassPathResource("email_templates/thanksForContacting.html");
            thanksForContactingEmail = new StringTemplate(IOUtils.toString(cpr.getInputStream()));

            cpr = new ClassPathResource("email_templates/contactNotification.html");
            contactNotification = new StringTemplate(IOUtils.toString(cpr.getInputStream()));

            cpr = new ClassPathResource("email_templates/commentNotification.html");
            commentNotification = new StringTemplate(IOUtils.toString(cpr.getInputStream()));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public String thanksForContacting(Contact contact) {
        thanksForContactingEmail.reset();
        thanksForContactingEmail.setAttribute("name", contact.getName());
        thanksForContactingEmail.setAttribute("logoImage", imagePath + "/favicon.png");
        thanksForContactingEmail.setAttribute("logoText", imagePath + "/logo1.png");
        return thanksForContactingEmail.toString();
    }

    public String contactNotification(Contact contact) {
        contactNotification.reset();
        contactNotification.setAttribute("name", contact.getName());
        contactNotification.setAttribute("email", contact.getEmail());
        contactNotification.setAttribute("phone", contact.getPhone());
        contactNotification.setAttribute("country", contact.getCountry());
        contactNotification.setAttribute("message", contact.getMessage());
        return contactNotification.toString();
    }

    public String commentNotification(Comment comment) {
        commentNotification.reset();
        commentNotification.setAttribute("name", comment.getContact().getName());
        commentNotification.setAttribute("message", comment.getContact().getMessage());
        commentNotification.setAttribute("product", productImage.replaceAll("\\{sku\\}", comment.getSku()));
        return commentNotification.toString();
    }
}
