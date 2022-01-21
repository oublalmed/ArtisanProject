package com.example.artisansproject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

@WebServlet("/AddProduct")
public class AddProduct extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out= response.getWriter();

        String namePrd = request.getParameter("namePrd");
        String desc = request.getParameter("desc");
        String price = request.getParameter("PrixPrd");
        int qte = Integer.parseInt(request.getParameter("qtePrd"));
        String image = request.getParameter("chemin");
        System.out.println(namePrd+desc+price+qte+image);
        int id=5;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false","root","");
            PreparedStatement stm= con.prepareStatement("insert into produits values(null,?,?,?,?,?,?)");
            stm.setString(1,namePrd);
            stm.setString(2,desc);
            stm.setInt(3,qte);
            stm.setString(4,price);
            stm.setInt(5,id);
            stm.setString(6,image);
            stm.executeUpdate();
            out.println("<script type=\"text/javascript\">");
            out.println("alert('Product added');");
            out.println("</script>");
            response.sendRedirect("ProfilArtisans.jsp");

        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

}
