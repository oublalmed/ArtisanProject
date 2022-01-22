package com.example.artisansproject.DAO;

import com.example.artisansproject.Models.Products;

import java.util.List;

public interface PruductsDao {

    public List<Products> getAllProducts(int id);
    public int DeleteProducts(int id);
}
