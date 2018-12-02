package com.list.contacts.controllers;

import com.list.contacts.models.Contact;
import com.list.contacts.services.ContactService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;

@Slf4j
@Controller
public class ContactsController {

    @Autowired
    private ContactService contactService;

    @RequestMapping(value = "/addContact", method = RequestMethod.POST)
    public String addContact(@ModelAttribute("contact") Contact contact, ModelMap modelMap){

        log.info("Contact Info: "+ contact.getFirstName()+" "+ contact.getLastName());
        Contact addedContact = contactService.addContact(contact);
        modelMap.addAttribute("contactId", "Contact Saved Successfully with Id: "+addedContact.getId());
        return "homepage";
    }

    @RequestMapping(value = "/getAllContacts", method = RequestMethod.GET)
    public String fetchContacts(ModelMap modelMap){
        log.info("Getting All Contacts");
        List<Contact> allContacts = contactService.getContacts();
        modelMap.addAttribute("allContacts", allContacts);
        return "allContacts";
    }
}
