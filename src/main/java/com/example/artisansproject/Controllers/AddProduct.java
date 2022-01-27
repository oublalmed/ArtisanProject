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

@MultipartConfig
@WebServlet("/AddProduct")
public class AddProduct extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out= response.getWriter();

        String namePrd = request.getParameter("namePrd");
        String desc = request.getParameter("desc");
        String price = request.getParameter("PrixPrd");
        int qte = Integer.parseInt(request.getParameter("qtePrd"));
        Part ImgPart = request.getPart("chemin");
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

        int id=5;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false","root","");
            PreparedStatement stm= con.prepareStatement("insert into produits values(null,?,?,?,?,?,?)");
            stm.setString(1,namePrd);
            stm.setString(2,desc);
            stm.setInt(3,qte);
            stm.setString(4,price);
            stm.setInt(5,id);
            stm.setString(6,savePath);
            stm.executeUpdate();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Product added');");
            out.println("</script>");
            response.sendRedirect("ProfilArtisans.jsp");

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
