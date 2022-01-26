package com.example.artisansproject.Controllers;

import com.example.artisansproject.DAO.ClientsDaoImp;
import com.example.artisansproject.Models.Artisans;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "SearchArtisan", value = "/SearchArtisan")
public class SearchArtisan extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String SearchArt= request.getParameter("CatArtisans");
        System.out.println(SearchArt);
        HttpSession session =request.getSession();
        ClientsDaoImp clientsDaoImp=new ClientsDaoImp();
        List<Artisans> list = clientsDaoImp.SearchArtisan(SearchArt);
        for (Artisans artisans : list)
        {
            System.out.println(artisans.getIdArtisan());
        }
        session.setAttribute("list",list);
        response.sendRedirect("Artisans.jsp");
    }
}
