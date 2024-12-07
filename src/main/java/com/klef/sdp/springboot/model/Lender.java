package com.klef.sdp.springboot.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "lender_table")
public class Lender {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "lender_id")
    private int id;

    @Column(name = "lender_name", nullable = false, length = 100)
    private String name;

    @Column(name = "lender_gender", nullable = false, length = 10)
    private String gender;

    @Column(name = "lender_dateofbirth", nullable = false, length = 20)
    private String dateOfBirth;

    @Column(name = "lender_email", nullable = false, unique = true, length = 100)
    private String email;

    @Column(name = "lender_password", nullable = false, length = 100)
    private String password;

    @Column(name = "lender_location", nullable = false, length = 100)
    private String location;

    @Column(name = "lender_contact", nullable = false, unique = true, length = 20)
    private String contact;

    @Column(name = "default_interest_rate", nullable = false)
    private double defaultInterestRate;


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getDateOfBirth() {
        return dateOfBirth;
    }

    public void setDateOfBirth(String dateOfBirth) {
        this.dateOfBirth = dateOfBirth;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }



    public double getDefaultInterestRate() {
        return defaultInterestRate;
    }

    public void setDefaultInterestRate(double defaultInterestRate) {
        this.defaultInterestRate = defaultInterestRate;
    }
}
