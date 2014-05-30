package com.unlimitedrealm.resources;

import com.unlimitedrealm.domain.Image;
import com.unlimitedrealm.service.ProductService;
import org.apache.commons.io.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.io.IOException;

import static org.springframework.web.bind.annotation.RequestMethod.GET;

@Controller
@RequestMapping("/images")
public class ImageResource {

    @Autowired
    ProductService productService;

    @RequestMapping(value = "{imageUrn}.image", method = GET)
    @ResponseBody
    public HttpEntity<byte[]> findImage(@PathVariable String imageUrn) {
        try {
            Image image = productService.findImage(imageUrn);
            byte[] imageBytes = IOUtils.toByteArray(image.getContent());

            HttpHeaders headers = new HttpHeaders();
            headers.setContentType(MediaType.IMAGE_JPEG); //or what ever type it is
            headers.setContentLength(image.getSize());
            return new HttpEntity<byte[]>(imageBytes, headers);

        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }


}
