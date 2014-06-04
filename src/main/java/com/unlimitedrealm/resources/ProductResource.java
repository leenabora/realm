package com.unlimitedrealm.resources;

import com.unlimitedrealm.domain.Product;
import com.unlimitedrealm.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
@RequestMapping("/products.htm")
public class ProductResource {

    @Autowired
    ProductService productService;

    @RequestMapping(method = GET)
    public String products(ModelMap model, HttpServletRequest request) {
        List<Product> products = productService.findAllVisible();
        model.addAttribute("products", products);
        model.addAttribute("baseUrl", request.getContextPath());
        return "products";
    }
}
