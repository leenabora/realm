package com.unlimitedrealm.domain;


import org.springframework.web.multipart.commons.CommonsMultipartFile;

public class Product {
    String _id;
    String sku;
    String description;
    String galleryHeading;
    String galleryDescription;
    String productDescription;
    CommonsMultipartFile galleryImage;
    CommonsMultipartFile productImage;

    public String getSku() {
        return sku;
    }

    public void setSku(String sku) {
        this.sku = sku;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getGalleryHeading() {
        return galleryHeading;
    }

    public void setGalleryHeading(String galleryHeading) {
        this.galleryHeading = galleryHeading;
    }

    public String getGalleryDescription() {
        return galleryDescription;
    }

    public void setGalleryDescription(String galleryDescription) {
        this.galleryDescription = galleryDescription;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public CommonsMultipartFile getGalleryImage() {
        return galleryImage;
    }

    public void setGalleryImage(CommonsMultipartFile galleryImage) {
        this.galleryImage = galleryImage;
    }

    public CommonsMultipartFile getProductImage() {
        return productImage;
    }

    public void setProductImage(CommonsMultipartFile productImage) {
        this.productImage = productImage;
    }

    public String get_id() {
        return _id;
    }

    public void set_id(String _id) {
        this._id = _id;
    }
}
