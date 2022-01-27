package com.example.artisansproject.Controllers;

import com.example.artisansproject.DAO.ClientsDaoImp;
import com.example.artisansproject.Models.Artisans;
import com.example.artisansproject.Models.Products;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "GetAllProducts", value = "/GetAllProducts")
public class GetAllProducts extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int idArtisan=Integer.parseInt(request.getParameter("idArtisan"));
        System.out.println("ID :"+idArtisan);
        HttpSession session =request.getSession();
        ClientsDaoImp clientsDaoImp=new ClientsDaoImp();
        clientsDaoImp.GetAllProducts(idArtisan);
        List<Products> produitsList = clientsDaoImp.GetAllProducts(idArtisan);
        session.setAttribute("produitsList",produitsList);
        response.sendRedirect("Products.jsp");
    }
}
