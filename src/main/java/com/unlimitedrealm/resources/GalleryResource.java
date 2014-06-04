package com.unlimitedrealm.resources;


import com.unlimitedrealm.domain.A;
import com.unlimitedrealm.domain.Product;
import com.unlimitedrealm.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
@RequestMapping("/")
public class GalleryResource {

    @Autowired
    ProductService productService;

    @RequestMapping(value = "gallery.htm", method = RequestMethod.GET)
    public String galleryPage(ModelMap model) {
        return "gallery";
    }

    @RequestMapping(value = "gallery/randomProduct.json", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public Product randomProduct(ModelMap model) {
        return productService.findRandomProduct();
    }


    @RequestMapping(value = "name.json", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
    @ResponseBody
    public A randomProduct1(ModelMap model) {
        return new A("leena");
    }
}
