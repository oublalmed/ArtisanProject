package com.example.artisansproject.Controllers;

import com.example.artisansproject.DAO.ArtisansDaoImp;
import com.example.artisansproject.DAO.ClientsDaoImp;
import com.example.artisansproject.Models.Artisans;
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

@WebServlet(name = "LoginClients", value = "/LoginClients")
public class LoginClients extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
    }

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
            PreparedStatement stm= con.prepareStatement("select * from client where Username='"+username+"' and passClient='"+password+"'");
            ResultSet rs= stm.executeQuery();

            //  Get column names For Artisans
            if(rs.next()){
                Clients client = new Clients();
                client.setIdClient(rs.getInt("idClient"));
                HttpSession session=request.getSession();
                ClientsDaoImp clientsDaoImp= new ClientsDaoImp();
                List<Clients> ClientList= clientsDaoImp.getAllClients(client.getIdClient());
                session.setAttribute("ClientList",ClientList);
                request.setAttribute("username", username);
                request.getRequestDispatcher("Home.jsp").forward(request,response);
                out.println(session);
            }
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

}

