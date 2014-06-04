package com.unlimitedrealm.domain;


import com.fasterxml.jackson.annotation.JsonIgnore;
import org.bson.types.ObjectId;

import java.io.IOException;

public class Product {
    ObjectId _id;
    String sku;
    String description;
    String galleryHeading;
    String gallerySubHeading;
    String galleryDescription;
    String productDescription;
    Image galleryImage;
    Image productImage;
    String statistics;
    String material;

    Boolean show;


    public Product(Boolean show) {
        this.show = show;
    }

    public Product() {
    }

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

    public ObjectId get_id() {
        return _id;
    }

    public void set_id(ObjectId _id) {
        this._id = _id;
    }

    public Boolean getShow() {
        return show;
    }

    public void setShow(Boolean show) {
        this.show = show;
    }

    public Image getGalleryImage() {
        return galleryImage;
    }

    public void setGalleryImage(Image galleryImage) {
        this.galleryImage = galleryImage;
    }

    public Image getProductImage() {
        return productImage;
    }

    public void setProductImage(Image productImage) {
        this.productImage = productImage;
    }

    public String getGallerySubHeading() {
        return gallerySubHeading;
    }

    public void setGallerySubHeading(String gallerySubHeading) {
        this.gallerySubHeading = gallerySubHeading;
    }

    public String getStatistics() {
        return statistics;
    }

    public void setStatistics(String statistics) {
        this.statistics = statistics;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    @JsonIgnore
    public boolean isNewGalleryImageUpload() {
        return galleryImage.isNewFileUpload();
    }

    @JsonIgnore
    public boolean isNewProductImageUpload() {
        return productImage.isNewFileUpload();
    }

    @JsonIgnore
    public void clearMultiPartData() throws IOException {
        galleryImage.setMultipartFile(null);
        productImage.setMultipartFile(null);
    }

}
