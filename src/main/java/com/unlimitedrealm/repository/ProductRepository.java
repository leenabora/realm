package com.unlimitedrealm.repository;

import com.mongodb.BasicDBObject;
import com.unlimitedrealm.domain.Product;
import com.unlimitedrealm.domain.Sku;
import org.mongojack.DBCursor;
import org.mongojack.JacksonDBCollection;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;

@Repository
public class ProductRepository {

    @Autowired
    DBConnection dbConnection;

    private JacksonDBCollection<Product, String> productCollection;
    private JacksonDBCollection<Sku, String> skuSeriesCollection;

    @PostConstruct
    public void init() {
        productCollection = JacksonDBCollection.wrap(dbConnection.getDb().getCollection("products"), Product.class, String.class);
        skuSeriesCollection = JacksonDBCollection.wrap(dbConnection.getDb().getCollection("skuSeries"), Sku.class, String.class);
    }

    public void saveOrUpdate(Product product) {
        productCollection.save(product);
    }

    public void saveSkuSeries(Sku sku) {
        skuSeriesCollection.drop();
        skuSeriesCollection.save(sku);
    }

    public Sku nextSkuSeries() {
        DBCursor<Sku> skuCusor = skuSeriesCollection.find();
        if (skuCusor.hasNext()) {
            return skuCusor.next();
        } else {
            return new Sku("AKSPB-1010");
        }
    }

    public Product find(String sku) {
        return productCollection.findOne(new BasicDBObject("sku", sku));
    }

    public Product findRandom() {
        long count = productCollection.count();
        int randomNum = 0 + (int) (Math.random() * count);
        return productCollection.find().limit(-1).skip(randomNum).next();
    }

    public List<Product> findAll() {
        DBCursor<Product> productCursor = productCollection.find();
        return buildProductList(productCursor);
    }

    public List<Product> findAllVisible() {
        DBCursor<Product> productCursor = productCollection.find(new BasicDBObject("show", true));
        return buildProductList(productCursor);
    }

    private List<Product> buildProductList(DBCursor<Product> productCursor) {
        List<Product> products = new ArrayList<>();

        while (productCursor.hasNext()) {
            Product product = productCursor.next();
            products.add(product);
        }
        return products;
    }


}
