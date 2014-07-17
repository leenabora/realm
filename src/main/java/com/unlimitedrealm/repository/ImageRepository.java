package com.unlimitedrealm.repository;


import com.mongodb.BasicDBObject;
import com.mongodb.gridfs.GridFS;
import com.mongodb.gridfs.GridFSDBFile;
import com.mongodb.gridfs.GridFSInputFile;
import com.unlimitedrealm.domain.Image;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.annotation.PostConstruct;
import java.io.IOException;


@Repository
public class ImageRepository {

    @Autowired
    private DBConnection dbConnection;

    private GridFS imageCollection;

    @PostConstruct
    public void init() {
        imageCollection = new GridFS(dbConnection.getDb(), "images");

    }

    public void saveImage(Image image, String fileName, boolean resize) throws IOException {
        GridFSInputFile gfsFile = imageCollection.createFile(resize ? image.getResizedContent() : image.getMultipartFile().getInputStream());
        gfsFile.setFilename(fileName);
        gfsFile.setMetaData(new BasicDBObject("width", image.getWidth()).append("height", image.getHeight()));
        gfsFile.save();
    }

    public Image findImage(String fileName) {
        GridFSDBFile gridFile = imageCollection.findOne(new BasicDBObject("filename", fileName));
        return new Image(gridFile.getInputStream(), gridFile.getLength());
    }

    public void deleteImage(String fileName) {
        imageCollection.remove(new BasicDBObject("filename", fileName));
    }
}
