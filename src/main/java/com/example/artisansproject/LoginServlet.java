package com.example.artisansproject;

import com.example.artisansproject.DAO.ArtisanDao;
import com.example.artisansproject.DAO.ArtisansDaoImp;
import com.example.artisansproject.DAO.ProductsDaoImp;
import com.example.artisansproject.Models.Artisans;
import com.example.artisansproject.Models.Products;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.List;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {

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
            PreparedStatement stm= con.prepareStatement("select * from artisan where mailArtisan='"+username+"' and password='"+password+"'");
            ResultSet rs= stm.executeQuery();

            //  Get column names For Artisans
            if(rs.next()){
                Artisans artisan = new Artisans();
                Products product = new Products();
                artisan.setIdArtisan(rs.getInt("idArtisan"));
                HttpSession session=request.getSession();
                ArtisansDaoImp artisansDaoImp=new ArtisansDaoImp();
                List<Artisans> artisansList= artisansDaoImp.getAllArtisans(artisan.getIdArtisan());
                session.setAttribute("artisansList",artisansList);
                ProductsDaoImp productsDaoImp=new ProductsDaoImp();
                List<Products> productsList= productsDaoImp.getAllProducts(product.getIdArtisan());
                session.setAttribute("productsList",productsList);
                request.setAttribute("username", username);
                request.getRequestDispatcher("ProfilArtisans.jsp").forward(request,response);
            }
        }
        catch (Exception e){
            System.out.println(e.getMessage());
        }
    }

}


