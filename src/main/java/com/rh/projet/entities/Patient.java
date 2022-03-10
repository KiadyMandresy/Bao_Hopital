package com.rh.projet.entities;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springframework.beans.factory.annotation.Autowired;

@Entity
@Table(name="Patient")
public class Patient {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Autowired
    private int idpatient;
    private String nom;
    private String prenom;
    private Date date_naissance;
    private char sexe;
    private Date date_entree;
    private Date date_sortie;
    private boolean avance;
    private Double montantavance;


    public Patient() {
    }

    public Patient(int idpatient, String nom, String prenom, Date date_naissance, char sexe, Date date_entree, Date date_sortie, boolean avance, Double montantavance) {
        this.idpatient = idpatient;
        this.nom = nom;
        this.prenom = prenom;
        this.date_naissance = date_naissance;
        this.sexe = sexe;
        this.date_entree = date_entree;
        this.date_sortie = date_sortie;
        this.avance = avance;
        this.montantavance = montantavance;
    }


    public int getIdpatient() {
        return this.idpatient;
    }

    public void setIdpatient(int idpatient) {
        this.idpatient = idpatient;
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

    public Date getDate_naissance() {
        return this.date_naissance;
    }

    public void setDate_naissance(Date date_naissance) {
        this.date_naissance = date_naissance;
    }

    public char getSexe() {
        return this.sexe;
    }

    public void setSexe(char sexe) {
        this.sexe = sexe;
    }

    public Date getDate_entree() {
        return this.date_entree;
    }

    public void setDate_entree(Date date_entree) {
        this.date_entree = date_entree;
    }

    public Date getDate_sortie() {
        return this.date_sortie;
    }

    public void setDate_sortie(Date date_sortie) {
        this.date_sortie = date_sortie;
    }

    public boolean isAvance() {
        return this.avance;
    }

    public boolean getAvance() {
        return this.avance;
    }

    public void setAvance(boolean avance) {
        this.avance = avance;
    }

    public Double getMontantavance() {
        return this.montantavance;
    }

    public void setMontantavance(Double montantavance) {
        this.montantavance = montantavance;
    }


    }
