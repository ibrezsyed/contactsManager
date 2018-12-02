package com.list.contacts.services;

import com.list.contacts.models.Contact;
import com.list.contacts.repositories.ContactsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ContactService {
    @Autowired
    private ContactsRepository contactsRepository;
    /*
        Saves a contact to DB
     */
    public Contact addContact(Contact contact){
        return contactsRepository.save(contact);
    }

    public List<Contact> getContacts() {
       return contactsRepository.findAll();
    }

    /*public Contact editContact(Contact contact) {
        Contact storedContact = contactsRepository.getOne(contact.getId());
    }*/
}
