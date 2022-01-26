package com.example.artisansproject.DAO;

import com.example.artisansproject.Models.Artisans;
import com.example.artisansproject.Models.Clients;

import java.util.List;

public interface ClientDao {

    public List<Clients> getAllClients(int id);
    public int DeleteClient(int idClient);
    public List<Artisans> SearchArtisan(String SearchArt);
}
