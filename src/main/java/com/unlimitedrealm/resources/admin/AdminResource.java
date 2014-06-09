package com.unlimitedrealm.resources.admin;

import com.unlimitedrealm.domain.Product;
import com.unlimitedrealm.service.CommentService;
import com.unlimitedrealm.service.ContactService;
import com.unlimitedrealm.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

import static org.springframework.web.bind.annotation.RequestMethod.GET;
import static org.springframework.web.bind.annotation.RequestMethod.POST;


@Controller
@RequestMapping("/admin")
public class AdminResource {

    @Autowired
    ProductService productService;
    @Autowired
    CommentService commentService;
    @Autowired
    ContactService contactService;

    @RequestMapping(value = "homePage.htm", method = GET)
    public String adminHome(ModelMap model) {
        return "admin/admin";
    }

    @RequestMapping(value = "products.htm", method = GET)
    public String listProducts(ModelMap model) {
        model.addAttribute("products", contactService.findAll());
        return "admin/products";
    }

    @RequestMapping(value = "addProductPage.form", method = GET)
    public String showAddProductPage(ModelMap model, HttpServletRequest request) {
        model.addAttribute("product", new Product(true));
        model.addAttribute("baseUrl", request.getContextPath());
        return "admin/addProductPage";
    }

    @RequestMapping(value = "{sku}/editProductPage.form", method = GET)
    public String showEditProductPage(@PathVariable String sku, ModelMap model, HttpServletRequest request) {
        Product product = productService.find(sku);
        model.addAttribute("product", product);
        model.addAttribute("baseUrl", request.getContextPath());
        return "admin/editProductPage";
    }

    @RequestMapping(value = "save.htm", method = POST)
    public String saveProduct(Product product) {
        productService.save(product);
        return "redirect:/admin/" + product.getSku() + "/editProductPage.form";
    }

    @RequestMapping(value = "contacts.htm", method = GET)
    public String listContacts(ModelMap model) {
        model.addAttribute("contacts", contactService.findAll());
        return "admin/contacts";
    }

}
