package com.example.artisansproject;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet(name = "RegisterClient", value = "/RegisterClient")
public class RegisterClient extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    PrintWriter out ;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String nomClient = request.getParameter("nomcl");
        String prenomClient = request.getParameter("prenomcl");
        String mailClient = request.getParameter("emailcl");
        String telClient = request.getParameter("telcl");
        String passClient = request.getParameter("password");
        String dateNaiClt = request.getParameter("agecl");
        String sexe = request.getParameter("sexe");
        String Username = request.getParameter("Username");


        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false","root","");
            PreparedStatement stm= con.prepareStatement("insert into client values(null,?,?,?,?,?,?,?,?)");
            stm.setString(1,nomClient);
            stm.setString(2,prenomClient);
            stm.setString(3,mailClient);
            stm.setString(4,telClient);
            stm.setString(5,passClient);
            stm.setString(6,dateNaiClt);
            stm.setString(7,sexe);
            stm.setString(8,Username);
            int i = stm.executeUpdate();
            if (i>0) {
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Client added');");
                out.println("</script>");
                response.sendRedirect("index.jsp");
            }else{
                System.out.println("Register failed ");
            }
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }

    }
}
