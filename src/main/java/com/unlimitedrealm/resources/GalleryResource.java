package com.unlimitedrealm.resources;


import com.unlimitedrealm.domain.Product;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;


@Controller
@RequestMapping("/gallery.htm")
public class GalleryResource {

    @RequestMapping(method = RequestMethod.GET)
    public String homePage(ModelMap model) {
        return "gallery";
    }
}
