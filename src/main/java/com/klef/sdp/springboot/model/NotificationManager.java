package com.klef.sdp.springboot.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.SimpleMailMessage;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Service;

@Service
public class NotificationManager {

    @Autowired
    JavaMailSender mailSender;

    private final String senderEmail = "2200032098cseh@gmail.com"; // Set your sender email here

    public String sendEmail(String toEmail, String subject, String msg) {
        try {
            SimpleMailMessage mailMessage = new SimpleMailMessage();
            mailMessage.setFrom(senderEmail);
            mailMessage.setTo(toEmail);
            mailMessage.setSubject(subject);
            mailMessage.setText(msg);

            mailSender.send(mailMessage);
            return "Email sent successfully to " + toEmail;
        } catch (Exception e) {
            return "Failed to send email: " + e.getMessage();
        }
    }
}

