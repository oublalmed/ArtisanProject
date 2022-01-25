package com.example.artisansproject.Controllers;

import com.example.artisansproject.DAO.CategorieDaoImp;
import com.example.artisansproject.DAO.ClientsDaoImp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(name = "DeletCat", value = "/DeletCat")
public class DeletCat extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int idCat=Integer.parseInt(request.getParameter("idCat"));
        CategorieDaoImp categorieDaoImp=new CategorieDaoImp();
        categorieDaoImp.DeletCat(idCat);
        response.sendRedirect("HomeAdmin.jsp");
    }
}
