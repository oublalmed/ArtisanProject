package com.example.artisansproject.Controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.nio.file.Files;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
@MultipartConfig
@WebServlet(name = "RegisterArtisan", value = "/RegisterArtisan")
public class RegisterArtisan extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    PrintWriter out ;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nomArtisan = request.getParameter("nomAr");
        String ville = request.getParameter("ville");
        String prenomArtisan = request.getParameter("prenomAr");
        String mailAr = request.getParameter("mailAr");
        String resume = request.getParameter("resume");
        String telAr = request.getParameter("telAr");
        String dateNai = request.getParameter("dateNai");
        int idCat = Integer.parseInt(request.getParameter("idcat"));
        String cinAr = request.getParameter("cinAr");
        String password = request.getParameter("password");
        Part ImgPart = request.getPart("ImageAr");
        System.out.println("part is :"+ImgPart);
        String imageFileName= extractFileName(ImgPart);
        System.out.println(imageFileName);
        String savePath= "C:\\Users\\Hp\\OneDrive\\Pictures\\ArtisansProject\\src\\main\\webapp\\img"+ File.separator + imageFileName;
        String savePath2= "C:\\Users\\Hp\\OneDrive\\Pictures\\ArtisansProject\\target\\ArtisansProject-1.0-SNAPSHOT\\img"+ File.separator + imageFileName;
        File fileSaveDir= new File(savePath);
        if (fileSaveDir.exists() != true) {
            ImgPart.write(savePath + File.separator);
            File fileSaveDir2 = new File(savePath2);
            copyFile(fileSaveDir, fileSaveDir2);
        }
        int id=1;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false", "root", "");
            PreparedStatement stm = con.prepareStatement("insert into artisan(nomArtisan,prenomArtisan,mailArtisan,telArtisan,dateNai,idCat,cinArtisan,imageArtisan,password,ville) values(?,?,?,?,?,?,?,?,?,?)");
            stm.setString(1, nomArtisan);
            stm.setString(2, prenomArtisan);
            stm.setString(3, mailAr);
            stm.setString(4, telAr);
            stm.setString(5, dateNai);
            stm.setInt(6, id);
            stm.setString(7, cinAr);
            stm.setString(8, savePath);
            stm.setString(9, password);
            stm.setString(10, ville);
            stm.executeUpdate();
            response.sendRedirect("index.jsp");

        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
    private String extractFileName(Part part) {
        String contentDisp = part.getHeader("content-disposition");
        String[] items = contentDisp.split(";");
        for (String s : items) {
            if (s.trim().startsWith("filename")) {
                return s.substring(s.indexOf("=") + 2, s.length() - 1);
            }
        }
        return "";
    }
    private static void copyFile(File source, File dest) throws IOException {
        Files.copy(source.toPath(), dest.toPath());
    }
 }

