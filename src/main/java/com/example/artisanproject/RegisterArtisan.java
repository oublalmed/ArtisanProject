package com.example.artisanproject;


import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.swing.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;

public class RegisterArtisan extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out= response.getWriter();

        String nom = request.getParameter("nomAr");
        String prenom = request.getParameter("prenomAr");
        String cin = request.getParameter("cinAr");
        String dateNai = request.getParameter("dateNai");
        String image = request.getParameter("chemin");
        String mailArtisan = request.getParameter("mailAr");
        String resume = request.getParameter("desc");
        String password = request.getParameter("password");
        String tel = request.getParameter("telAr");
        String idCat = request.getParameter("idCat");
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false","root","");
            PreparedStatement stm= con.prepareStatement("insert into artisan values(?,?,?,?,?,?,?,?,?,?)");
            stm.setString(2,nom);
            stm.setString(3,prenom);
            stm.setString(4,mailArtisan);
            stm.setString(5,resume);
            stm.setString(6,tel);
            stm.setString(7,dateNai);
            stm.setString(8,idCat);
            stm.setString(9,cin);
            stm.setString(10,image);
            stm.setString(10,password);
            stm.executeUpdate();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }



}
