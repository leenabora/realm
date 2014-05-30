package com.unlimitedrealm.service;

import com.unlimitedrealm.domain.Image;
import com.unlimitedrealm.domain.Product;
import com.unlimitedrealm.repository.ImageRepository;
import com.unlimitedrealm.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {

    @Autowired
    ProductRepository productRepository;
    @Autowired
    ImageRepository imageRepository;

    public void saveProduct(Product product) {
        productRepository.save(product);
    }

    public List<Product> findAll() {
        return productRepository.findAll();
    }

    public Image findImage(String fileName) {
        return imageRepository.findImage(fileName);
    }
}
