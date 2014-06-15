package com.unlimitedrealm.resources;


import com.unlimitedrealm.domain.Product;
import com.unlimitedrealm.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import static org.springframework.http.MediaType.APPLICATION_JSON_VALUE;
import static org.springframework.web.bind.annotation.RequestMethod.GET;


@Controller
@RequestMapping("/")
public class GalleryResource {

    @Autowired
    ProductService productService;

    @RequestMapping(value = "gallery.htm", method = GET)
    public String galleryPage(ModelMap model) {
        return "gallery";
    }

    @RequestMapping(value = "gallery/randomProduct.json", method = GET, produces = APPLICATION_JSON_VALUE)
    @ResponseBody
    public Product randomProduct(ModelMap model) {
        return productService.findRandomProduct();
    }

}
