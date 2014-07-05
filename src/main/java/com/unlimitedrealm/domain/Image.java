package com.unlimitedrealm.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.imageio.ImageIO;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

public class Image {

    CommonsMultipartFile multipartFile;
    InputStream content;
    Long size;
    Integer width;
    Integer height;

    public Image() {
    }

    public Image(InputStream content, long size) {
        this.content = content;
        this.size = size;
    }


    @JsonIgnore
    public InputStream getResizedContent() throws IOException {
        BufferedImage originalImage = ImageIO.read(getMultipartFile().getInputStream());
        int type = originalImage.getType() == 0 ? BufferedImage.TYPE_INT_ARGB : originalImage.getType();

        return resizeImage(originalImage, type);
    }

    @JsonIgnore
    public boolean isNewFileUpload() {
        return multipartFile.getSize() != 0;
    }

    @JsonIgnore
    private InputStream resizeImage(BufferedImage originalImage, int type) throws IOException {
        double ratio = 1.0 * originalImage.getWidth() / originalImage.getHeight();
        int newHeight = new Double(width / ratio).intValue();

        BufferedImage resizedImage = new BufferedImage(width, newHeight, type);
        Graphics2D g = resizedImage.createGraphics();
        g.drawImage(originalImage, 0, 0, width, newHeight, null);
        g.dispose();

        ByteArrayOutputStream baos = new ByteArrayOutputStream();
        ImageIO.write(resizedImage, "jpg", baos);
        return new ByteArrayInputStream(baos.toByteArray());
    }

    public InputStream getContent() {
        return content;
    }

    public void setContent(InputStream content) {
        this.content = content;
    }

    public Long getSize() {
        return size;
    }

    public void setSize(Long size) {
        this.size = size;
    }

    public Integer getWidth() {
        return width;
    }

    public void setWidth(Integer width) {
        this.width = width;
    }

    public Integer getHeight() {
        return height;
    }

    public void setHeight(Integer height) {
        this.height = height;
    }

    public void setMultipartFile(CommonsMultipartFile multipartFile) throws IOException {
        this.multipartFile = multipartFile;
    }

    public CommonsMultipartFile getMultipartFile() {
        return multipartFile;
    }

}
