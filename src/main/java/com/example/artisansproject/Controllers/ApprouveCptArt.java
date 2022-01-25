package com.example.artisansproject.Controllers;

import com.example.artisansproject.DAO.ArtisansDaoImp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "ApprouveCptArt", value = "/ApprouveCptArt")
public class ApprouveCptArt extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idArtisan=Integer.parseInt(request.getParameter("idArtisan"));
        ArtisansDaoImp artisansDaoImp=new ArtisansDaoImp();
        artisansDaoImp.Approuver(idArtisan);
        response.sendRedirect("HomeAdmin.jsp");
    }
}
