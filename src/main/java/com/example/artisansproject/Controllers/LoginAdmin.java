package com.example.artisansproject.Controllers;

import com.example.artisansproject.DAO.ClientsDaoImp;
import com.example.artisansproject.Models.Clients;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

@WebServlet(name = "LoginAdmin", value = "/LoginAdmin")
public class LoginAdmin extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out= response.getWriter();

        String username = request.getParameter("nameAdmin");
        String password = request.getParameter("passwordAdmin");
        //connect database
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false","root","");
            PreparedStatement stm= con.prepareStatement("select * from Admin where usename='"+username+"' and password='"+password+"'");
            ResultSet rs= stm.executeQuery();

            //  Get column names For Artisans
            if(rs.next()){
                HttpSession session=request.getSession();
                request.setAttribute("username", username);
                request.getRequestDispatcher("HomeAdmin.jsp").forward(request,response);
                out.println(session);
            }
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }

    }
}
