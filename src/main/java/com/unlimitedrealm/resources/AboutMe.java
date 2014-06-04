package com.unlimitedrealm.resources;

import com.unlimitedrealm.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
@RequestMapping("/aboutMe.htm")
public class AboutMe {

    @Autowired
    ProductService productService;

    @RequestMapping(method = GET)
    public String aboutMePage(ModelMap model) {
        return "aboutMe";
    }
}
