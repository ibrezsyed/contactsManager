package com.list.contacts.repositories;

import com.list.contacts.models.Contact;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

public interface ContactsRepository extends JpaRepository<Contact, Integer> {

        @Query("FROM Contact c WHERE c.phoneNumber = :phoneNumber")
        public Contact getContactByPhoneNumber(@Param("phoneNumber") String phoneNumber);
}