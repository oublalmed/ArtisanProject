package com.example.artisansproject.DAO;

import com.example.artisansproject.Models.Artisans;

import java.util.List;

public interface ArtisanDao {
    public List <Artisans> getAllArtisans(int id);
}
