package com.rh.projet.entities;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.beans.factory.annotation.Autowired;

public class Utilisateur {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Autowired
    private int id;
    private int idrole;
    private String login;
    private String mdp;


    public Utilisateur() {
    }

    public Utilisateur(int id, int idrole, String login, String mdp) {
        this.id = id;
        this.idrole = idrole;
        this.login = login;
        this.mdp = mdp;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdrole() {
        return this.idrole;
    }

    public void setIdrole(int idrole) {
        this.idrole = idrole;
    }

    public String getLogin() {
        return this.login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getMdp() {
        return this.mdp;
    }

    public void setMdp(String mdp) {
        this.mdp = mdp;
    }

}
