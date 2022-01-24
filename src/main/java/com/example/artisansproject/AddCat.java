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

@WebServlet(name = "AddCat", value = "/AddCat")
public class AddCat extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out= response.getWriter();
        String name =request.getParameter("nameCat");
        System.out.println(name);
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false", "root", "");
            PreparedStatement stm = con.prepareStatement("insert into categories values(null,?)");
            stm.setString(1, name);
            stm.executeUpdate();
            response.sendRedirect("HomeAdmin.jsp");

        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

}
