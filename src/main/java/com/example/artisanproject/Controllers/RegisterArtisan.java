package com.example.artisanproject.Controllers;

import com.example.artisanproject.DAO.ArtisanDao;
import com.example.artisanproject.Models.Artisans;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet({ "/RegisterArtisan", "/registerArtisan" })
public class RegisterArtisan extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ArtisanDao artisanDao;

    public void init() {
        artisanDao = new ArtisanDao();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int registerArtisanId = 0;

        String nomArtisan = request.getParameter("nomAr");
        String prenomArtisan = request.getParameter("prenomAr");
        String mailAr = request.getParameter("mailAr");
        String resume = request.getParameter("resume");
        String telAr = request.getParameter("telAr");
        String dateNai = request.getParameter("dateNai");
        String idCat = request.getParameter("idCat");
        String cinAr = request.getParameter("CinAr");
        String image = request.getParameter("ImageAr");
        String password = request.getParameter("password");

        Artisans artisans = new Artisans();
        artisans.setNomArtisan(nomArtisan);
        artisans.setPrenomArtisan(prenomArtisan);
        artisans.setMailArtisan(mailAr);
        artisans.setResume(resume);
        artisans.setTelArtisan(telAr);
        artisans.setDateNai(dateNai);
        artisans.setIdCat(idCat);
        artisans.setCinArtisan(cinAr);
        artisans.setImage(image);
        artisans.setPassword(password);

        try {
                registerArtisanId = artisanDao.RegisterArtisan(artisans);
        } catch (Exception e) {
            e.printStackTrace();
        }
        if(registerArtisanId > 0) {
            request.setAttribute("nomAr",artisans.getNomArtisan());
            request.setAttribute("prenomAr",artisans.getPrenomArtisan());
            request.setAttribute("mailAr",artisans.getMailArtisan());
            request.setAttribute("resume", artisans.getResume());
            request.setAttribute("telAr", artisans.getTelArtisan());
            request.setAttribute("dateNai",artisans.getDateNai());
            request.setAttribute("idCat",artisans.getIdCat());
            request.setAttribute("CinAr",artisans.getCinArtisan());
            request.setAttribute("ImageAr", artisans.getImage());
            request.setAttribute("password", artisans.getPassword());
            RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
            requestDispatcher.forward(request, response);
        }
    }
}
