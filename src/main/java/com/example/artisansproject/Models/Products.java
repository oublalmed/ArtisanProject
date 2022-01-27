package com.example.artisansproject.Models;

public class Products {
    private int idPrd;
    private String namePrd ;
    private int qte;
    private double price;
    private String imagePrd;
    private String descPrd ;
    private int idArtisan;
    private String libelle;

    public Products(){


    }

    public Products(int idPrd, String namePrd, int qte, double price, String imagePrd, String descPrd, int idArtisan) {
        this.idPrd = idPrd;
        this.namePrd = namePrd;
        this.qte = qte;
        this.price = price;
        this.imagePrd = imagePrd;
        this.descPrd = descPrd;
        this.idArtisan = idArtisan;
    }

    public Products(int idPrd, String namePrd, int qte, double price) {
        this.idPrd = idPrd;
        this.namePrd = namePrd;
        this.qte = qte;
        this.price = price;
    }

    public Products(String namePrd, double price, String libelle) {
        this.namePrd = namePrd;
        this.price = price;
        this.libelle = libelle;
    }

    public Products(String nomProduit, String descPrd, int qteProduits, double prixProduits) {
        this.namePrd = namePrd;
        this.descPrd=descPrd;
        this.qte = qte;
        this.price = price;
    }

    public String getLibelle() {
        return libelle;
    }

    public int getIdPrd() {
        return idPrd;
    }

    public void setIdPrd(int idPrd) {
        this.idPrd = idPrd;
    }

    public String getNamePrd() {
        return namePrd;
    }

    public void setNamePrd(String namePrd) {
        this.namePrd = namePrd;
    }

    public int getQte() {
        return qte;
    }

    public void setQte(int qte) {
        this.qte = qte;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getImagePrd() {
        return imagePrd;
    }

    public void setImagePrd(String imagePrd) {
        this.imagePrd = imagePrd;
    }

    public String getDescPrd() {
        return descPrd;
    }

    public void setDescPrd(String descPrd) {
        this.descPrd = descPrd;
    }

    public int getIdArtisan() {
        return idArtisan;
    }

    public void setIdArtisan(int idArtisan) {
        this.idArtisan = idArtisan;
    }
}
