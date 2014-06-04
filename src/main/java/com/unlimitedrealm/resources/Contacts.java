package com.unlimitedrealm.resources;

import com.unlimitedrealm.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
@RequestMapping("/contacts.htm")
public class Contacts {

    @Autowired
    ProductService productService;

    @RequestMapping( method = GET)
    public String contactsPage(ModelMap model) {
        return "contacts";
    }
}
