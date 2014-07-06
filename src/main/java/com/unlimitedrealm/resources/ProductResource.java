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
        model.addAttribute("patternType", "all");
        model.addAttribute("page", "collection");
        return "products";
    }

    @RequestMapping(value = "type/{type}.htm", method = GET)
    public String productsByType(@PathVariable String type, ModelMap model, HttpServletRequest request) {
        List<Product> products = productService.findAllVisibleByType(type);
        model.addAttribute("products", products);
        model.addAttribute("baseUrl", request.getContextPath());
        model.addAttribute("patternType", type);
        model.addAttribute("page", "collection");
        return "products";
    }

    @RequestMapping(value = "colors/{colors}.htm", method = GET)
    public String productsByColors(@PathVariable String colors, ModelMap model, HttpServletRequest request) {
        String[] colorArray = colors.split(":");
        List<Product> products = productService.findAllVisible(colorArray);

        model.addAttribute("products", products);
        for (String color : colorArray) {
            model.addAttribute(color, true);
        }
        model.addAttribute("page", "collection");
        model.addAttribute("baseUrl", request.getContextPath());

        return "products";
    }

    @RequestMapping(value = "{sku}.htm", method = GET)
    public String product(@PathVariable String sku, ModelMap model, HttpServletRequest request) {
        Product product = productService.find(sku);
        List<Comment> comments = commentService.findAllPublished(sku);
        model.addAttribute("product", product);
        model.addAttribute("comment", new Comment());
        model.addAttribute("comments", comments);
        model.addAttribute("baseUrl", request.getContextPath());
        return "product";
    }
}
