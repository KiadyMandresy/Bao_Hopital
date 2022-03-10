package com.rh.projet.entities;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.beans.factory.annotation.Autowired;

public class Corpsmedical {
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Autowired
    private int id;
    private String nom;
    private String prenom;
    private int idgrade;


    public Corpsmedical() {
    }

    public Corpsmedical(int id, String nom, String prenom, int idgrade) {
        this.id = id;
        this.nom = nom;
        this.prenom = prenom;
        this.idgrade = idgrade;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNom() {
        return this.nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getPrenom() {
        return this.prenom;
    }

    public void setPrenom(String prenom) {
        this.prenom = prenom;
    }

    public int getIdgrade() {
        return this.idgrade;
    }

    public void setIdgrade(int idgrade) {
        this.idgrade = idgrade;
    }

    }