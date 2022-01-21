package com.example.artisansproject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

@WebServlet(name = "RegisterArtisan", value = "/RegisterArtisan")
public class RegisterArtisan extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    PrintWriter out ;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nomArtisan = request.getParameter("nomAr");
        String prenomArtisan = request.getParameter("prenomAr");
        String mailAr = request.getParameter("mailAr");
        String resume = request.getParameter("resume");
        String telAr = request.getParameter("telAr");
        String dateNai = request.getParameter("dateNai");
        int idCat = Integer.parseInt(request.getParameter("idcat"));
        String cinAr = request.getParameter("cinAr");
        String image = request.getParameter("ImageAr");
        String password = request.getParameter("password");
        int id=1;

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false", "root", "");
            PreparedStatement stm = con.prepareStatement("insert into artisan values(null,?,?,?,?,?,?,?,?,?,?)");
            stm.setString(1, nomArtisan);
            stm.setString(2, prenomArtisan);
            stm.setString(3, mailAr);
            stm.setString(4, resume);
            stm.setString(5, telAr);
            stm.setString(6, dateNai);
            stm.setInt(7, id);
            stm.setString(8, cinAr);
            stm.setString(9, image);
            stm.setString(10, password);
            stm.executeUpdate();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Artisan added');");
            out.println("</script>");
            response.sendRedirect("index.jsp");

        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }
 }

