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

    public void save(Product product) {
        try {

            Product existingProduct = productRepository.find(product.getSku());
            if (existingProduct != null) {
                product.set_id(existingProduct.get_id());
                if (product.isNewGalleryImageUpload()) {
                    imageRepository.deleteImage(product.getSku() + "-gallery");
                }
                if (product.isNewProductImageUpload()) {
                    imageRepository.deleteImage(product.getSku() + "-product");
                }
            }

            if (product.isNewGalleryImageUpload()) {
                imageRepository.saveImage(product.getGalleryImage(), product.getSku() + "-gallery");
            }

            if (product.isNewProductImageUpload()) {
                imageRepository.saveImage(product.getProductImage(), product.getSku() + "-product");
            }

            product.clearMultiPartData();

            productRepository.saveOrUpdate(product);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public List<Product> findAll() {
        return productRepository.findAll();
    }

    public List<Product> findAllVisible() {
        return productRepository.findAllVisible();
    }

    public Product find(String sku) {
        return productRepository.find(sku);
    }

    public Product findRandomProduct() {
        return productRepository.findRandom();
    }

    public Image findImage(String fileName) {
        return imageRepository.findImage(fileName);
    }

    public Product findRandomGalleryImage() {
        Product randomProduct = productRepository.findRandom();
        randomProduct.setGalleryImage(imageRepository.findImage(randomProduct.getSku() + "-gallery"));
        return randomProduct;
    }

}
