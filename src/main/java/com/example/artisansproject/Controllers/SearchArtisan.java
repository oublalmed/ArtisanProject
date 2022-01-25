package com.example.artisansproject.Controllers;

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

     String SearchArt =  request.getParameter("CatArtisans");
        List<Artisans> artisansList = new ArrayList<Artisans>();
        Artisans artisan = new Artisans();;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false", "root", "");
            PreparedStatement ps = cn.prepareStatement("select * from artisan a , categories c where a.idCat=c.idCat and lebelleCat ='"+SearchArt+"'");
            ResultSet rs = ps.executeQuery();
            while(rs.next()){

                artisan = new Artisans(rs.getString("nomArtisan"),
                        rs.getString("prenomArtisan"),
                        rs.getString("ville"),
                        rs.getString("lebelleCat")
                );
            }
            artisansList.add(artisan);
        }catch (Exception e){

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
