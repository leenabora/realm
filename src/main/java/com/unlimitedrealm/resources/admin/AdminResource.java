package com.unlimitedrealm.resources.admin;

import com.unlimitedrealm.domain.Product;
import com.unlimitedrealm.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;


@Controller
@RequestMapping("/admin")
public class AdminResource {

    @Autowired
    ProductService productService;

    @RequestMapping(value = "homePage.htm",method = GET)
    public String adminHome(ModelMap model) {
        return "admin/admin";
    }

    @RequestMapping(value = "products.htm", method = GET)
    public String listProducts(ModelMap model) {
        model.addAttribute("products", productService.findAll());
        return "admin/products";
    }

    @RequestMapping(value = "addProductPage.form", method = GET)
    public String showAddProductPage(ModelMap model, HttpServletRequest request) {
        model.addAttribute("product", new Product());
        model.addAttribute("baseUrl", request.getContextPath());
        return "admin/addProductPage";
    }

    @RequestMapping(value = "addProduct.htm", method = POST)
    public String addProduct(Product product) {
        productService.saveProduct(product);
        return "redirect:/admin/products.htm";
    }
}
