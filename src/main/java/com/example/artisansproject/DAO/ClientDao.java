package com.example.artisansproject.DAO;

import com.example.artisansproject.Models.Clients;

import java.util.List;

public interface ClientDao {

    public List<Clients> getAllClients(int id);
}
