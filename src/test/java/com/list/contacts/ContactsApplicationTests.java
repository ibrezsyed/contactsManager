package com.list.contacts;

import com.list.contacts.models.Contact;
import com.list.contacts.services.ContactService;
import lombok.AccessLevel;
import lombok.experimental.FieldDefaults;
import lombok.extern.log4j.Log4j2;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;


@Log4j2
@RunWith(SpringRunner.class)
@FieldDefaults(level = AccessLevel.PRIVATE)
@SpringBootTest
public class ContactsApplicationTests {

	@Autowired
	MockMvc mockMvc;

	@Autowired
	ContactService contactService;

	@Test
	public void contextLoads() {
	}

	@Test
	public void addContact() {
		log.info("Test to add a new Contact");

		Contact contact =  new Contact();
		contact.setFirstName("Syed");
		contact.setLastName("Ibrez");
		contact.setEmail("ibrezsyed@gmail.com");
		contact.setPhoneNumber("8197991921");
		contact.setAddress("3250 BUDI KOTE MAIN ROAD SAIT COMPOUND3250 BUDI KOTE MAIN ROAD SAIT COMPOUND");
		contact.setBirthDate("01/01/1950");
		contact.setSocialProfile("www.linkedin.com/syed-ibrez");
	}
}
