package com.unlimitedrealm.repository;

import com.mongodb.BasicDBObject;
import com.unlimitedrealm.domain.Product;
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

    @PostConstruct
    public void init() {
        productCollection = JacksonDBCollection.wrap(dbConnection.getDb().getCollection("products"), Product.class, String.class);
    }

    public void saveOrUpdate(Product product) {
        productCollection.save(product);
    }

    public Product find(String sku) {
        return productCollection.findOne(new BasicDBObject("sku", sku));
    }

    public List<Product> findAll() {
        List<Product> products = new ArrayList<>();
        DBCursor<Product> productCursor = productCollection.find();
        while (productCursor.hasNext()) {
            Product product = productCursor.next();
            products.add(product);
        }
        return products;
    }


}
