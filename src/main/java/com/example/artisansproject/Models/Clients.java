package com.example.artisansproject.Models;

import java.util.Date;

public class Clients {
    private int idClient ;
    private String nomClient ;
    private String prenomClient;
    private String username,password,mailClient ,telClient,sexe;
    private Date dateNaiCl ;

    public Clients(){

    }

    public Clients(String username) {
        this.username = username;
    }

    public Clients(int idClient, String nomClient, String prenomClient, String username, String password, String mailClient, String telClient, String sexe, Date dateNaiCl) {
        this.idClient = idClient;
        this.nomClient = nomClient;
        this.prenomClient = prenomClient;
        this.username = username;
        this.password = password;
        this.mailClient = mailClient;
        this.telClient = telClient;
        this.sexe = sexe;
        this.dateNaiCl = dateNaiCl;
    }

    public int getIdClient() {
        return idClient;
    }

    public void setIdClient(int idClient) {
        this.idClient = idClient;
    }

    public String getNomClient() {
        return nomClient;
    }

    public void setNomClient(String nomClient) {
        this.nomClient = nomClient;
    }

    public String getPrenomClient() {
        return prenomClient;
    }

    public void setPrenomClient(String prenomClient) {
        this.prenomClient = prenomClient;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getMailClient() {
        return mailClient;
    }

    public void setMailClient(String mailClient) {
        this.mailClient = mailClient;
    }

    public String getTelClient() {
        return telClient;
    }

    public void setTelClient(String telClient) {
        this.telClient = telClient;
    }

    public String getSexe() {
        return sexe;
    }

    public void setSexe(String sexe) {
        this.sexe = sexe;
    }

    public Date getDateNaiCl() {
        return dateNaiCl;
    }

    public void setDateNaiCl(Date dateNaiCl) {
        this.dateNaiCl = dateNaiCl;
    }
}
