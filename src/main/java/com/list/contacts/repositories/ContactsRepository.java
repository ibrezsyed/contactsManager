package com.list.contacts.repositories;

import com.list.contacts.models.Contact;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ContactsRepository extends JpaRepository<Contact, Integer> {
}
