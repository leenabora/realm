package com.unlimitedrealm.utils;

import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class MailUtils {
    private JavaMailSenderImpl mailSender;
    private String mailFromAddress;
    private String mailFromName;

    public MailUtils(JavaMailSenderImpl mailSender, String mailFromAddress, String mailFromName) {
        this.mailSender = mailSender;
        this.mailFromAddress = mailFromAddress;
        this.mailFromName = mailFromName;
    }

    public void sendMail(String to, String subject, String msg) throws Exception {
        MimeMessage message = mailSender.createMimeMessage();
        MimeMessageHelper helper = new MimeMessageHelper(message, true);
        helper.setTo(to);
        helper.setText(msg, true);
        helper.setSubject(subject);
        helper.setFrom(new InternetAddress(mailFromAddress, mailFromName));
        mailSender.send(message);
    }
}
