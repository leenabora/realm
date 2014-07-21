package com.unlimitedrealm.resources;


import com.unlimitedrealm.domain.Product;
import com.unlimitedrealm.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

import static org.springframework.http.MediaType.APPLICATION_JSON_VALUE;
import static org.springframework.web.bind.annotation.RequestMethod.GET;


@Controller
@RequestMapping("/")
public class GalleryResource {

    @Autowired
    ProductService productService;

    @RequestMapping(value = "home.htm", method = GET)
    public String galleryPage(ModelMap model) {
        List<Product> newProducts = productService.findNewProducts();
        List<Product> featuredProducts = productService.findFeaturedProducts();
        model.addAttribute("newProducts", newProducts);
        model.addAttribute("featuredProducts", featuredProducts);
        model.addAttribute("page", "home");
        return "home";
    }

    @RequestMapping(value = "gallery/randomProduct.json", method = GET, produces = APPLICATION_JSON_VALUE)
    @ResponseBody
    public Product randomProduct(ModelMap model) {
        return productService.findRandomProduct();
    }

}
