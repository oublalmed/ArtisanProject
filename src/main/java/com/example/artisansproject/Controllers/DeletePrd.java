package com.example.artisansproject.Controllers;

import com.example.artisansproject.DAO.ArtisansDaoImp;
import com.example.artisansproject.DAO.ProductsDaoImp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeletePrd", value = "/DeletePrd")
public class DeletePrd extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idProduit=Integer.parseInt(request.getParameter("idProduit"));
        ProductsDaoImp productsDaoImp=new ProductsDaoImp();
        productsDaoImp.DeleteProducts(idProduit);
        response.sendRedirect("ProfilArtisans.jsp");
    }
}
