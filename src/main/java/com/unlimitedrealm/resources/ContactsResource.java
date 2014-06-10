package com.unlimitedrealm.resources;

import com.unlimitedrealm.domain.Contact;
import com.unlimitedrealm.service.ContactService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;

@Controller
@RequestMapping("/contacts.htm")
public class ContactsResource {

    @Autowired
    ContactService contactService;

    @RequestMapping(method = GET)
    public String contactsPage(ModelMap model, HttpServletRequest request) {
        return contactPage(model, request);
    }

    @RequestMapping(method = POST)
    public String saveContact(@Valid Contact contact, BindingResult result, HttpServletRequest request, ModelMap model) {
        if (result.hasErrors()) {
            model.addAttribute("contact", contact);
            return "contacts";
        } else {
            contactService.save(contact);
            model.put("showMessage", true);
            return contactPage(model, request);
        }
    }

    private String contactPage(ModelMap model, HttpServletRequest request) {
        model.addAttribute("contact", new Contact());
        model.addAttribute("baseUrl", request.getContextPath());
        return "contacts";
    }
}
