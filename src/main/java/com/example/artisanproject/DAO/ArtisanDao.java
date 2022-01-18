package com.example.artisanproject.DAO;

import com.example.artisanproject.Models.Artisans;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ArtisanDao {

    public int RegisterArtisan(Artisans artisan) throws ClassNotFoundException {
        String INSERT_USERS_SQL = "INSERT INTO artisan VALUES (?, ?, ?, ?,?,?,?,?,?,?,?);";

        int result = 0;

        Class.forName("com.mysql.jdbc.Driver");

        //Step 1: Established the connection with database
        try (Connection connection = DriverManager
                .getConnection("jdbc:mysql://localhost:3306/artisanbd?useSSL=false","root","");

             // Step 2:Create a statement using connection object
             PreparedStatement preparedStatement =  connection.prepareStatement(INSERT_USERS_SQL)) {
            preparedStatement.setString(2,artisan.getNomArtisan());
            preparedStatement.setString(3,artisan.getPrenomArtisan());
            preparedStatement.setString(4,artisan.getMailArtisan());
            preparedStatement.setString(5, artisan.getResume());
            preparedStatement.setString(6, artisan.getTelArtisan());
            preparedStatement.setString(7,artisan.getDateNai());
            preparedStatement.setString(8,artisan.getIdCat());
            preparedStatement.setString(9,artisan.getCinArtisan());
            preparedStatement.setString(10, artisan.getImage());
            preparedStatement.setString(11, artisan.getPassword());

            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return result;
    }

    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
