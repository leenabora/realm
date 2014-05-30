package com.unlimitedrealm.domain;

import java.io.InputStream;

public class Image {
    InputStream content;
    long size;

    public Image(InputStream content, long size) {
        this.content = content;
        this.size = size;
    }

    public InputStream getContent() {
        return content;
    }

    public long getSize() {
        return size;
    }
}
