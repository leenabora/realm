package com.unlimitedrealm.domain;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class Sku {

    private String sku;

    public Sku(String sku) {
        this.sku = sku;
    }

    public static String generate(String latestSku) {
        Pattern pattern = Pattern.compile("AKSPB-(.*)");
        Matcher matcher = pattern.matcher(latestSku);
        if (matcher.find()) {
            String latestSeries = matcher.group(1);
            return (Integer.parseInt(latestSeries) + 1) + "";
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

}
