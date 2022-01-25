package com.example.artisansproject.Controllers;

import com.example.artisansproject.DAO.ArtisansDaoImp;
import com.example.artisansproject.DAO.ClientsDaoImp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeleteClient", value = "/DeleteClient")
public class DeleteClient extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int idClient=Integer.parseInt(request.getParameter("idClient"));
        ClientsDaoImp clientsDaoImp=new ClientsDaoImp();
        clientsDaoImp.DeleteClient(idClient);
        response.sendRedirect("HomeAdmin.jsp");
    }
}
