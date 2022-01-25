package com.example.artisansproject.DAO;

import com.example.artisansproject.Models.Artisans;
import com.example.artisansproject.Models.Clients;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ClientsDaoImp implements ClientDao {


    @Override
    public List<Clients> getAllClients(int id) {
         Connection cn ;
         PreparedStatement ps;
         String query;
         ResultSet rs;

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
}
