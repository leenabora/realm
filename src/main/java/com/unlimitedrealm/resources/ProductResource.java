package com.unlimitedrealm.resources;

import com.unlimitedrealm.domain.Comment;
import com.unlimitedrealm.domain.Product;
import com.unlimitedrealm.service.CommentService;
import com.unlimitedrealm.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
@RequestMapping("/products")
public class ProductResource {

    @Autowired
    ProductService productService;
    @Autowired
    CommentService commentService;

    @RequestMapping(value = "all.htm", method = GET)
    public String products(ModelMap model, HttpServletRequest request) {
        List<Product> products = productService.findAllVisible();
        model.addAttribute("products", products);
        model.addAttribute("baseUrl", request.getContextPath());
        return "products";
    }

    @RequestMapping(value = "{sku}.htm", method = GET)
    public String product(@PathVariable String sku, ModelMap model, HttpServletRequest request) {
        Product product = productService.find(sku);
        List<Comment> comments = commentService.findAll(sku);
        model.addAttribute("product", product);
        model.addAttribute("comment", new Comment());
        model.addAttribute("comments", comments);
        model.addAttribute("baseUrl", request.getContextPath());
        return "product";
    }
}
