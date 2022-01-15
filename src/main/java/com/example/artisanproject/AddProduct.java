package com.example.artisanproject;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.swing.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;

@WebServlet("/AddProduct")
public class AddProduct extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out= response.getWriter();

        String namePrd = request.getParameter("namePrd");
        String desc = request.getParameter("desc");
        String price = request.getParameter("prixPrd");
        String qte = request.getParameter("qtePrd");
        String image = request.getParameter("chemin");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false","root","");
            PreparedStatement stm= con.prepareStatement("insert into produits values(?,?,?,?,?,?)");
            stm.setString(2,namePrd);
            stm.setString(3,desc);
            stm.setString(4,price);
            stm.setString(5,qte);
            stm.setString(6,image);
            stm.executeUpdate();
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

}
