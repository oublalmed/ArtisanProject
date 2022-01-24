package com.example.artisansproject;

import com.example.artisansproject.DAO.ArtisanDao;
import com.example.artisansproject.DAO.ArtisansDaoImp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteArtisan", value = "/DeleteArtisan")
public class DeleteArtisan extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        int idArtisan=Integer.parseInt(request.getParameter("idArtisan"));
        ArtisansDaoImp artisansDaoImp=new ArtisansDaoImp();
        artisansDaoImp.DeleteArtisan(idArtisan);
        response.sendRedirect("HomeAdmin.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
