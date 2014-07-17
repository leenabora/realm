package com.unlimitedrealm.domain;


import com.fasterxml.jackson.annotation.JsonIgnore;
import org.bson.types.ObjectId;

import java.io.IOException;

public class Product {
    ObjectId _id;
    String sku;
    String name;
    String description;
    Boolean show;
    Boolean resize;

    boolean newArrival;
    boolean showInHomePageNewArrivalSection;
    boolean showInHomePageFeaturedProductSection;

    Image listPageImage;
    Image listPageHoverImage;

    Image detailPageImage;
    Image detailBackPageImage;

    Image detailPageThumbnailImage;
    Image detailBackPageThumbnailImage;

    String statistics;
    String material;
    PatternType patternType;
    Colors colors;

    public Product(Boolean show, String sku) {
        this.show = show;
        this.sku = sku;
    }

    public Product() {
    }

    @JsonIgnore
    public void clearMultiPartData() throws IOException {
        listPageImage.setMultipartFile(null);
        listPageHoverImage.setMultipartFile(null);

        detailPageImage.setMultipartFile(null);
        detailPageThumbnailImage.setMultipartFile(null);

        detailBackPageImage.setMultipartFile(null);
        detailBackPageThumbnailImage.setMultipartFile(null);
    }


    @JsonIgnore
    public boolean isNewListPageImage() {
        return listPageImage.isNewFileUpload();
    }

    @JsonIgnore
    public boolean isNewListPageHoverImage() {
        return listPageHoverImage.isNewFileUpload();
    }

    @JsonIgnore
    public boolean isNewDetailPageImage() {
        return detailPageImage.isNewFileUpload();
    }

    @JsonIgnore
    public boolean isNewDetailPageThumbnailImage() {
        return detailPageThumbnailImage.isNewFileUpload();
    }

    @JsonIgnore
    public boolean isNewDetailBackPageImage() {
        return detailBackPageImage.isNewFileUpload();
    }

    @JsonIgnore
    public boolean isNewDetailBackPageThumbnailImage() {
        return detailBackPageThumbnailImage.isNewFileUpload();
    }

    public ObjectId get_id() {
        return _id;
    }

    public void set_id(ObjectId _id) {
        this._id = _id;
    }

    public String getSku() {
        return sku;
    }

    public void setSku(String sku) {
        this.sku = sku;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Boolean getShow() {
        return show;
    }

    public void setShow(Boolean show) {
        this.show = show;
    }

    public boolean isNewArrival() {
        return newArrival;
    }

    public void setNewArrival(boolean newArrival) {
        this.newArrival = newArrival;
    }

    public boolean isShowInHomePageNewArrivalSection() {
        return showInHomePageNewArrivalSection;
    }

    public void setShowInHomePageNewArrivalSection(boolean showInHomePageNewArrivalSection) {
        this.showInHomePageNewArrivalSection = showInHomePageNewArrivalSection;
    }

    public boolean isShowInHomePageFeaturedProductSection() {
        return showInHomePageFeaturedProductSection;
    }

    public void setShowInHomePageFeaturedProductSection(boolean showInHomePageFeaturedProductSection) {
        this.showInHomePageFeaturedProductSection = showInHomePageFeaturedProductSection;
    }

    public Image getListPageImage() {
        return listPageImage;
    }

    public void setListPageImage(Image listPageImage) {
        this.listPageImage = listPageImage;
    }

    public Image getListPageHoverImage() {
        return listPageHoverImage;
    }

    public void setListPageHoverImage(Image listPageHoverImage) {
        this.listPageHoverImage = listPageHoverImage;
    }

    public Image getDetailPageImage() {
        return detailPageImage;
    }

    public void setDetailPageImage(Image detailPageImage) {
        this.detailPageImage = detailPageImage;
    }

    public Image getDetailPageThumbnailImage() {
        return detailPageThumbnailImage;
    }

    public void setDetailPageThumbnailImage(Image detailPageThumbnailImage) {
        this.detailPageThumbnailImage = detailPageThumbnailImage;
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

    public PatternType getPatternType() {
        return patternType;
    }

    public void setPatternType(PatternType patternType) {
        this.patternType = patternType;
    }


    public Boolean getResize() {
        return resize;
    }

    public void setResize(Boolean resize) {
        this.resize = resize;
    }

    public Colors getColors() {
        return colors;
    }

    public void setColors(Colors colors) {
        this.colors = colors;
    }

    public Image getDetailBackPageImage() {
        return detailBackPageImage;
    }

    public void setDetailBackPageImage(Image detailBackPageImage) {
        this.detailBackPageImage = detailBackPageImage;
    }

    public Image getDetailBackPageThumbnailImage() {
        return detailBackPageThumbnailImage;
    }

    public void setDetailBackPageThumbnailImage(Image detailBackPageThumbnailImage) {
        this.detailBackPageThumbnailImage = detailBackPageThumbnailImage;
    }
}
