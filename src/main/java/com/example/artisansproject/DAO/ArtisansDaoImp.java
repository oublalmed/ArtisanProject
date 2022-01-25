package com.example.artisansproject.DAO;


import com.example.artisansproject.Models.Artisans;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ArtisansDaoImp implements ArtisanDao{

    private Connection cn ;
    private PreparedStatement ps;
    private String query;
    private ResultSet rs;

    public List<Artisans>  getAllArtisans(int id) {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false", "root", "");
            PreparedStatement ps = cn.prepareStatement("select nomArtisan,prenomArtisan,resume,lebelleCat,imageArtisan from artisan A , categories C where A.idCat=C.idCat and idArtisan ='"+id+"'" );
            ResultSet rs = ps.executeQuery();
            List<Artisans> listArtisans = new ArrayList<Artisans>();
            while(rs.next()){
                Artisans artisans = new Artisans(

                        rs.getString("nomArtisan"),
                        rs.getString("prenomArtisan"),
                        rs.getString("resume"),
                        rs.getString("lebelleCat"),
                        rs.getString("imageArtisan")
                );
                listArtisans.add(artisans);
            }
            return listArtisans;
        }catch (Exception E){
            System.out.println("Connection Error"+E);
        }

        return null;
    }

    @Override
    public int DeleteArtisan(int idArtisan) {
        PrintWriter out = null;
        query="DELETE FROM artisan WHERE idArtisan=?";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false", "root", "");
            ps= cn.prepareStatement(query);
            ps.setInt(1,idArtisan);
            int i =ps.executeUpdate();
            if(i>0){
                return 1;

            }
            else{
                return 0;
            }
        }
        catch (Exception e){
            System.out.println("Connection Error"+e);
        }
        return -1;
    }

    }
