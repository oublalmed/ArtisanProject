package com.example.artisansproject.Models;

public class Categories {

    private int idCat;
    private String libelleCat ;

    public Categories(int idCat, String libelleCat) {
        this.idCat = idCat;
        this.libelleCat = libelleCat;
    }

    public int getIdCat() {
        return idCat;
    }

    public void setIdCat(int idCat) {
        this.idCat = idCat;
    }

    public String getLibelleCat() {
        return libelleCat;
    }

    public void setLibelleCat(String libelleCat) {
        this.libelleCat = libelleCat;
    }
}
