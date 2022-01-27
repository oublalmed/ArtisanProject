package com.example.artisansproject.DAO;

import com.example.artisansproject.Models.Artisans;
import com.example.artisansproject.Models.Clients;
import com.example.artisansproject.Models.Products;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ClientsDaoImp implements ClientDao {

    Connection cn ;
    PreparedStatement ps;
    String query;
    ResultSet rs;

    @Override
    public List<Clients> getAllClients(int id) {

            try {
                Class.forName("com.mysql.jdbc.Driver");
                 cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false", "root", "");
                 ps = cn.prepareStatement("select Username from client where idClient ='"+id+"'" );
                 rs = ps.executeQuery();
                List<Clients> listClients = new ArrayList<Clients>();
                while(rs.next()){
                    Clients client = new Clients(
                            rs.getString("Username")
                    );
                    listClients.add(client);
                }
                return listClients;
            }catch (Exception E){
                System.out.println("Connection Error"+E);
            }
        return null;
    }

    @Override
    public int DeleteClient(int idClient) {
        PrintWriter out = null;
        query="DELETE FROM client WHERE idClient=?";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false", "root", "");
            ps= cn.prepareStatement(query);
            ps.setInt(1,idClient);
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

    public List<Artisans> SearchArtisan(String SearchArt) {

        List<Artisans> artisansList = new ArrayList<Artisans>();
        Artisans artisan = new Artisans();

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false", "root", "");
            PreparedStatement ps = cn.prepareStatement("select * from artisan a , categories c where a.idCat=c.idCat and etat = 'Active' and lebelleCat ='"+SearchArt+"'");
            ResultSet rs = ps.executeQuery();
            while (rs.next())
            {
                artisan = new Artisans(rs.getInt("idArtisan"),
                        rs.getString("nomArtisan"),
                        rs.getString("prenomArtisan"),
                        rs.getString("lebelleCat"),
                        rs.getString("ville")
                );
                artisansList.add(artisan);
            }
            return artisansList;
        } catch (Exception e) {

        }
        return null;
    }

    @Override
    public List<Products> GetAllProducts(int idArtisan) {
        List<Products> productsList = new ArrayList<Products>();
        Products product = new Products();
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false", "root", "");
            PreparedStatement ps = cn.prepareStatement("select * from produits P ,Artisan A , categories C where P.idArtisan=A.idArtisan and A.idCat=C.idCat and P.idArtisan='"+idArtisan+"'");
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                product = new Products(rs.getString("nomProduit"),
                        rs.getDouble("prixProduits"),
                        rs.getString("lebelleCat")
                );
                productsList.add(product);
            }
            return productsList;
        }catch(Exception E){
            System.out.println(E);
        }
        return null;
    }

}
