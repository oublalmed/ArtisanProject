package com.example.artisansproject.Models;
import java.io.Serializable;

public class Artisans implements Serializable {

    private int idArtisan;
    private String nomArtisan;
    private String prenomArtisan;
    private String mailArtisan;
    private String telArtisan;
    private String resume;
    private String password;
    private String image;
    private String dateNai;
    private String idCat;
    private String cinArtisan;
    private String libelleCat;
    private String ville ;

    public Artisans(){

    }

    public Artisans(String nomArtisan, String prenomArtisan, String libelleCat, String ville) {
        this.nomArtisan = nomArtisan;
        this.prenomArtisan = prenomArtisan;
        this.libelleCat = libelleCat;
        this.ville = ville;
    }

    public Artisans(String nomArtisan, String prenomArtisan, String resume, String libelleCat, String image) {
        this.nomArtisan = nomArtisan;
        this.prenomArtisan = prenomArtisan;
        this.resume = resume;
        this.image = image;
        this.libelleCat = libelleCat;
    }

    public Artisans(int idArtisan, String nomArtisan, String prenomArtisan, String mailArtisan, String telArtisan, String resume, String password, String image, String dateNai, String idCat, String cinArtisan, String libelleCat) {
        this.idArtisan = idArtisan;
        this.nomArtisan = nomArtisan;
        this.prenomArtisan = prenomArtisan;
        this.mailArtisan = mailArtisan;
        this.telArtisan = telArtisan;
        this.resume = resume;
        this.password = password;
        this.image = image;
        this.dateNai = dateNai;
        this.idCat = idCat;
        this.cinArtisan = cinArtisan;
        this.libelleCat = libelleCat;
    }

    public int getIdArtisan() {
        return idArtisan;
    }

    public void setIdArtisan(int idArtisan) {
        this.idArtisan = idArtisan;
    }

    public String getNomArtisan() {
        return nomArtisan;
    }

    public void setNomArtisan(String nomArtisan) {
        this.nomArtisan = nomArtisan;
    }

    public String getPrenomArtisan() {
        return prenomArtisan;
    }

    public void setPrenomArtisan(String prenomArtisan) {
        this.prenomArtisan = prenomArtisan;
    }

    public String getMailArtisan() {
        return mailArtisan;
    }

    public void setMailArtisan(String mailArtisan) {
        this.mailArtisan = mailArtisan;
    }

    public String getTelArtisan() {
        return telArtisan;
    }

    public void setTelArtisan(String telArtisan) {
        this.telArtisan = telArtisan;
    }

    public String getResume() {
        return resume;
    }

    public void setResume(String resume) {
        this.resume = resume;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDateNai() {
        return dateNai;
    }

    public void setDateNai(String dateNai) {
        this.dateNai = dateNai;
    }

    public String getIdCat() {
        return idCat;
    }

    public void setIdCat(String idCat) {
        this.idCat = idCat;
    }

    public String getCinArtisan() {
        return cinArtisan;
    }

    public void setCinArtisan(String cinArtisan) {
        this.cinArtisan = cinArtisan;
    }

    public String getLibelleCat() {
        return libelleCat;
    }

    public String getVille() {
        return ville;
    }

    public void setVille(String ville) {
        this.ville = ville;
    }

    public void setLibelleCat(String libelleCat) {
        this.libelleCat = libelleCat;
    }
}
