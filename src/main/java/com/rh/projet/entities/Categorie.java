package com.rh.projet.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.springframework.beans.factory.annotation.Autowired;

@Entity
@Table(name="Categorie")
public class Categorie {
    

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Autowired
    private int id;
    private char categorie;
    private int nombrelit;
    private Double tarif;


    public Categorie() {
    }

    public Categorie(int id, char categorie, int nombrelit, Double tarif) {
        this.id = id;
        this.categorie = categorie;
        this.nombrelit = nombrelit;
        this.tarif = tarif;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public char getCategorie() {
        return this.categorie;
    }

    public void setCategorie(char categorie) {
        this.categorie = categorie;
    }

    public int getNombrelit() {
        return this.nombrelit;
    }

    public void setNombrelit(int nombrelit) {
        this.nombrelit = nombrelit;
    }

    public Double getTarif() {
        return this.tarif;
    }

    public void setTarif(Double tarif) {
        this.tarif = tarif;
    }

    }
