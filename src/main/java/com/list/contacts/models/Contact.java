package com.list.contacts.models;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "contacts")
@Data
public class Contact {

    @Id
    @GeneratedValue( strategy = GenerationType.AUTO)
    private int id;
    private String firstName;
    private String lastName;
    private String email;
    private String phoneNumber;
    private String address;
    private String birthDate;
    private String socialProfile;
//    private String photo;
}
