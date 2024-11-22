package com.example.service;

import org.apache.commons.io.FileUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.io.File;
import java.io.IOException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;

@Service
public class ImageDownloadService {
 private static final Logger logger = LoggerFactory.getLogger(ImageDownloadService.class);
 private static final String DOWNLOAD_DIR = "downloaded_images";
 private final RestTemplate restTemplate;

 public ImageDownloadService() {
     this.restTemplate = new RestTemplate();
     createDownloadDirectory();
 }

 private void createDownloadDirectory() {
     File directory = new File(DOWNLOAD_DIR);
     if (!directory.exists()) {
         directory.mkdirs();
     }
 }

 public String downloadImage(String imageUrl) {
     try {
         String fileName = extractFileName(imageUrl);
         File targetFile = new File(DOWNLOAD_DIR + File.separator + fileName);
         
         FileUtils.copyURLToFile(
             new URL(imageUrl),
             targetFile,
             5000, // connection timeout
             5000  // read timeout
         );
         
         logger.info("Successfully downloaded image: {}", fileName);
         return targetFile.getAbsolutePath();
     } catch (IOException e) {
         logger.error("Failed to download image from URL: " + imageUrl, e);
         return null;
     }
 }

 public List<String> downloadImages(List<String> imageUrls) {
     List<String> downloadedPaths = new ArrayList<>();
     
     for (String url : imageUrls) {
         String path = downloadImage(url);
         if (path != null) {
             downloadedPaths.add(path);
         }
     }
     
     return downloadedPaths;
 }

 private String extractFileName(String imageUrl) {
     String fileName = imageUrl.substring(imageUrl.lastIndexOf('/') + 1);
     if (fileName.isEmpty() || !fileName.contains(".")) {
         fileName = "image_" + System.currentTimeMillis() + ".jpg";
     }
     return fileName;
 }
}