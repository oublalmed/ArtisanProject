package com.example.artisanproject;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.swing.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

  @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out= response.getWriter();

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        //connect database
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false","root","");
            PreparedStatement stm= con.prepareStatement("select * from artisan where mailArtisan='"+username+"' and password='"+password+"'");
            ResultSet rs= stm.executeQuery();

            //  Get column names For Artisans
            if(rs.next()){
                HttpSession session=request.getSession();
                session.setAttribute("username",username);
                request.setAttribute("username", username);
                request.getRequestDispatcher("ProfilArtisans.jsp").forward(request,response);
            }
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

}


