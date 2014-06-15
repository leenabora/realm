package com.unlimitedrealm.domain;

import com.fasterxml.jackson.annotation.JsonIgnore;
import org.bson.types.ObjectId;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Sku {

    private ObjectId _id;

    private String sku;

    public Sku() {
    }

    public Sku(String sku) {
        this.sku = sku;
    }

    @JsonIgnore
    public static String generate(String latestSku) {
        Pattern pattern = Pattern.compile("AKSPB-(.*)");
        Matcher matcher = pattern.matcher(latestSku);
        if (matcher.find()) {
            String latestSeries = matcher.group(1);
            return "AKSPB-" + (Integer.parseInt(latestSeries) + 1) + "";
        } else {
            return "AKSPB-10";
        }
    }

    public String getSku() {
        return sku;
    }

    public void setSku(String sku) {
        this.sku = sku;
    }

    public ObjectId get_id() {
        return _id;
    }

    public void set_id(ObjectId _id) {
        this._id = _id;
    }
}
