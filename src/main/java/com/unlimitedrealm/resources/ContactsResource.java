package com.unlimitedrealm.resources;

import com.unlimitedrealm.domain.Contact;
import com.unlimitedrealm.service.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
@RequestMapping("/contacts.htm")
public class ContactsResource {

    @Autowired
    ContactService contactService;

    @RequestMapping(method = GET)
    public String contactsPage(ModelMap model) {
        model.put("showMessage", false);
        return "contacts";
    }

    @RequestMapping(method = POST)
    public String saveContact(Contact contact, ModelMap model) {
        contactService.save(contact);
        model.put("showMessage", true);
        return "redirect:/contacts";
    }
}
