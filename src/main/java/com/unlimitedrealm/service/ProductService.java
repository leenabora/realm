package com.unlimitedrealm.service;

import com.unlimitedrealm.domain.Image;
import com.unlimitedrealm.domain.Product;
import com.unlimitedrealm.domain.Sku;
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
                if (product.isNewListPageImage()) {
                    imageRepository.deleteImage(product.getSku() + "-list");
                }
                if (product.isNewListPageHoverImage()) {
                    imageRepository.deleteImage(product.getSku() + "-list-hover");
                }
                if (product.isNewDetailPageImage()) {
                    imageRepository.deleteImage(product.getSku() + "-detail");
                }
                if (product.isNewDetailPageThumbnailImage()) {
                    imageRepository.deleteImage(product.getSku() + "-detail-thumbnail");
                }
                if (product.isNewDetailBackPageImage()) {
                    imageRepository.deleteImage(product.getSku() + "-detail-back");
                }
                if (product.isNewDetailPageThumbnailImage()) {
                    imageRepository.deleteImage(product.getSku() + "-detail-back-thumbnail");
                }
            }

            if (product.isNewListPageImage()) {
                imageRepository.saveImage(product.getListPageImage(), product.getSku() + "-list", product.getResize());
            }
            if (product.isNewListPageHoverImage()) {
                imageRepository.saveImage(product.getListPageHoverImage(), product.getSku() + "-list-hover", product.getResize());
            }
            if (product.isNewDetailPageImage()) {
                imageRepository.saveImage(product.getDetailPageImage(), product.getSku() + "-detail", product.getResize());
            }
            if (product.isNewDetailPageThumbnailImage()) {
                imageRepository.saveImage(product.getDetailPageThumbnailImage(), product.getSku() + "-detail-thumbnail", product.getResize());
            }
            if (product.isNewDetailBackPageImage()) {
                imageRepository.saveImage(product.getDetailBackPageImage(), product.getSku() + "-detail-back", product.getResize());
            }
            if (product.isNewDetailBackPageThumbnailImage()) {
                imageRepository.saveImage(product.getDetailBackPageThumbnailImage(), product.getSku() + "-detail-back-thumbnail", product.getResize());
            }

            product.clearMultiPartData();

            productRepository.saveOrUpdate(product);
            productRepository.saveSkuSeries(new Sku(product.getSku()));
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public Sku fetchNextSkuSeries() {
        return productRepository.nextSkuSeries();
    }

    public List<Product> findAll() {
        return productRepository.findAll();
    }

    public List<Product> findAllVisible() {
        return productRepository.findAllVisible();
    }

    public List<Product> findAllVisibleByType(String type) {
        String types = type.equals("IndianWear") ? "Lehenga:Salwar_Suit" : type.equals("WesternWear") ? "Midi:Skirt" : type;
        return productRepository.findAllVisibleByType(types.split(":"));
    }

    public List<Product> findAllVisible(String[] colors) {
        return productRepository.findAllVisibleByColors(colors);
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

   /* public Product findRandomGalleryImage() {
        Product randomProduct = productRepository.findRandom();
        randomProduct.setGalleryImage(imageRepository.findImage(randomProduct.getSku() + "-gallery"));
        return randomProduct;
    }*/

}
