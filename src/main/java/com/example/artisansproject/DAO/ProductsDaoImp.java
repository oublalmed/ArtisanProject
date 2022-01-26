package com.example.artisansproject.DAO;

import com.example.artisansproject.Models.Artisans;
import com.example.artisansproject.Models.Products;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductsDaoImp implements PruductsDao{

    private Connection cn ;
    private PreparedStatement ps;
    private String query;
    private ResultSet rs;


    @Override
    public List<Products> getAllProducts(int id) {

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false", "root", "");
            PreparedStatement ps = cn.prepareStatement("select nomProduit,descProduit,QteProduits,prixProduits from artisan A , produits P where A.idArtisan=P.idArtisan and P.idArtisan=5");
            ResultSet rs = ps.executeQuery();
            List<Products> listProducts = new ArrayList<Products>();
            while(rs.next()){
                Products product = new Products(

                        rs.getString("nomProduit"),
                        rs.getString("descProduit"),
                        rs.getInt("QteProduits"),
                        rs.getDouble("prixProduits")
                );
                listProducts.add(product);
            }
            return listProducts;
        }catch (Exception E){
            System.out.println("Connection Error"+E);
        }

        return null;
    }


    @Override
    public int DeleteProducts(int idProduit) {

        PrintWriter out = null;
        query="DELETE FROM PRODUITS WHERE idProduit=?";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false", "root", "");
            ps= cn.prepareStatement(query);
            ps.setInt(1,idProduit);
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
