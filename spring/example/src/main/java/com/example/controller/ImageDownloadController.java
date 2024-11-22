package com.example.controller;

import com.example.service.ImageDownloadService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

@Controller
@RequestMapping("/images")
public class ImageDownloadController {
    
    private final ImageDownloadService imageDownloadService;
    
    @Autowired
    public ImageDownloadController(ImageDownloadService imageDownloadService) {
        this.imageDownloadService = imageDownloadService;
    }
    
    @RequestMapping(value = "/download", method = RequestMethod.POST)
    @ResponseBody
    public String downloadSingleImage(@RequestParam("url") String imageUrl) {
        String result = imageDownloadService.downloadImage(imageUrl);
        if (result != null) {
            return "Image downloaded successfully to: " + result;
        }
        return "Failed to download image";
    }
    
    @RequestMapping(value = "/download-multiple", method = RequestMethod.POST)
    @ResponseBody
    public List<String> downloadMultipleImages(@RequestParam("urls") List<String> imageUrls) {
        return imageDownloadService.downloadImages(imageUrls);
    }
}