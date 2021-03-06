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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
@Controller
public class ContactsController {

    @Autowired
    private ContactService contactService;

    /**
     * Saves a given Contact
     * @param contact
     * @param modelMap
     * @return
     */
    @RequestMapping(value = "/addContact", method = RequestMethod.POST)
    public ModelAndView addContact(@ModelAttribute("contact") Contact contact, ModelMap modelMap){

    	Contact cntct = contactService.getContactByPhoneNumber(contact.getPhoneNumber());
    	Map<String, Object> map = new HashMap<>();
    	if(cntct != null) {
    		map.put("dupContact", "Contact Already Exists!");
    		return new ModelAndView("addContact",map);
    	}
        log.info("Contact Info: "+ contact.getFirstName()+" "+ contact.getLastName());
        Contact addedContact = contactService.addContact(contact);
        modelMap.addAttribute("contactId", "Contact Saved Successfully with Id: "+addedContact.getId());
        	return new ModelAndView("addContact",map);
    }

    @RequestMapping(value = "/getAllContacts", method = RequestMethod.GET)
    public String fetchContacts(ModelMap modelMap){
        log.info("Getting All Contacts");
        List<Contact> allContacts = contactService.getContacts();
        modelMap.addAttribute("allContacts", allContacts);
        return "allContacts";
    }

    @RequestMapping(value = "/editContact", method = RequestMethod.GET)
    public String editConntact(@RequestParam("id") int id, ModelMap modelMap) {

        Contact contactFromDB = contactService.getContactById(id);
        log.info("Contact By Id from DB:   "+ contactFromDB);

        modelMap.addAttribute("contact", contactFromDB);
        return "UpdateContact";
    }

    @RequestMapping(value = "/deleteContact", method = RequestMethod.GET)
    public String deleteContact(@RequestParam("id") int id, ModelMap modelMap) {

        contactService.deleteContact(id);
        List<Contact> allContacts = contactService.getContacts();
        modelMap.addAttribute("allContacts", allContacts);
        return "allContacts";
    }

    @RequestMapping(value = "/updateContact", method = RequestMethod.POST)
    public String updateContact(@ModelAttribute("contact") Contact contact, ModelMap modelMap) {

        contactService.updateContact(contact);
        List<Contact> allContacts = contactService.getContacts();
        modelMap.addAttribute("allContacts", allContacts);
        return "allContacts";
    }

    /*@RequestMapping(value = "/editContact", method = RequestMethod.GET)
    public String searchByPhoneNumber(@RequestParam("phoneNumber") String phoneNumber, ModelMap modelMap) {
       Contact contactFromDB = contactService.getContactByPhoneNumber(phoneNumber);
       log.info("Contact By phone Number:   "+ contactFromDB);

       modelMap.addAttribute("contact", contactFromDB);
       return "UpdateContact";
    }*/
}
