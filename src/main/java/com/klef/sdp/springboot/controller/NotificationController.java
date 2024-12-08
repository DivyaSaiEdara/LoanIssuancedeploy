package com.klef.sdp.springboot.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import com.klef.sdp.springboot.model.NotificationManager;

@RestController
@RequestMapping("/borrower")
public class NotificationController {

    @Autowired
    NotificationManager notificationManager;

    @GetMapping("/register")
    public String registerBorrower() {
        // Simulate borrower registration
        String borrowerName = "John Doe"; // Replace with the actual borrower name
        String borrowerEmail = "johndoe@gmail.com"; // Replace with the actual borrower email

        // Log the registration (simulating saving to a database)
        System.out.println("Borrower Registered: Name = " + borrowerName + ", Email = " + borrowerEmail);

        // Send email notification
        String subject = "Welcome to FINSYNC: Loan Management System";
        String message = "Dear " + borrowerName + ",\n\nThank you for registering as a borrower on FINSYNC.\n\nBest regards,\nFINSYNC Team";
        return notificationManager.sendEmail(borrowerEmail, subject, message);
    }
}

