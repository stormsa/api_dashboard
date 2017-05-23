package main.java.tools;

import org.hibernate.internal.util.xml.ErrorLogger;
import org.springframework.web.multipart.MultipartFile;
import main.java.Constante.Constante;
/*
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.ArrayList;

/**
 * Created by saziri on 25/10/2016.
 */
/*
public class FileAction implements Constante {
    // Upload Image in default folder
    public static String uploadImage(MultipartFile file){
        return upload(file, IMG_PATH);
    }
    // Upload image in specific folder
    public static String uploadImage(MultipartFile file, String folder){
        return upload(file, IMG_PATH+folder);
    }
    public static String uploadAttachment(MultipartFile file, String folder){
        return upload(file, ATTACHMENT_PATH+folder);
    }
    public static void downloadFile(){

    }
    private static String upload(MultipartFile file, String path) {
        ErrorLogger errorLogger = new ErrorLogger();
        if (!file.isEmpty()) {
            try {
                new File(path).mkdirs();
                String file_path = path+"/"+file.getOriginalFilename();
                Files.copy(file.getInputStream(), Paths.get(file_path));
                return file_path;
            } catch (IOException e) {
                errorLogger.log(new Exception("Failed to upload " + file.getOriginalFilename() + " => " + e.getMessage()));
            }
            catch (RuntimeException e){
                errorLogger.log(new Exception("Failed to upload " + file.getOriginalFilename() + " => " + e.getMessage()));
            }
        } else {
            errorLogger.log(new Exception("Failed to upload " + file.getOriginalFilename() + " because it was empty"));
        }
        return null;
    }
    public static ArrayList<String> getFiles(String path){
        File folder = new File(path);
        File[] listOfFiles = folder.listFiles();
        ArrayList<String> attachments = new ArrayList<String>();
        if(listOfFiles != null){
            for (int i = 0; i < listOfFiles.length; i++) {
                if (listOfFiles[i].isFile()) {
                    attachments.add(listOfFiles[i].getName());
                } else if (listOfFiles[i].isDirectory()) {
                    System.out.println("Directory " + listOfFiles[i].getName());
                }
            }
        }
        return attachments;
    }
}
*/
