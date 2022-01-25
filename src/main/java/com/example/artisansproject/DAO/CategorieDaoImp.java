package com.example.artisansproject.DAO;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CategorieDaoImp implements CategorieDao {
    Connection cn;
    PreparedStatement ps;
    String query;
    ResultSet rs;

    @Override
    public int DeletCat(int idCat) {
        PrintWriter out = null;
        query = "DELETE FROM categories WHERE idCat=?";
        try {
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false", "root", "");
            ps = cn.prepareStatement(query);
            ps.setInt(1, idCat);
            int i = ps.executeUpdate();
            if (i > 0) {
                return 1;

            } else {
                return 0;
            }
        } catch (Exception e) {
            System.out.println("Connection Error" + e);
        }
        return -1;
    }

}