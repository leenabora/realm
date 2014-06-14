package com.unlimitedrealm.utils;

import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;

import javax.mail.internet.MimeMessage;

public class MailUtils {
    private JavaMailSenderImpl mailSender;
    private String mailFrom;

    public MailUtils(JavaMailSenderImpl mailSender, String mailFrom) {
        this.mailSender = mailSender;
        this.mailFrom = mailFrom;
    }


    public void sendMail(String to, String subject, String msg) throws Exception {
        MimeMessage message = mailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message, true);
        helper.setTo(to);
        helper.setText(msg, true);
        helper.setSubject(subject);
        mailSender.send(message);
    }
}
