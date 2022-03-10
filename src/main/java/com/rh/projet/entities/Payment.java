package com.rh.projet.entities;

import java.sql.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.beans.factory.annotation.Autowired;

public class Payment {
    

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Autowired
    private int id;
    private Date date;
    private Double montant;
    private int idpatient;


    public Payment() {
    }

    public Payment(int id, Date date, Double montant, int idpatient) {
        this.id = id;
        this.date = date;
        this.montant = montant;
        this.idpatient = idpatient;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Date getDate() {
        return this.date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public Double getMontant() {
        return this.montant;
    }

    public void setMontant(Double montant) {
        this.montant = montant;
    }

    public int getIdpatient() {
        return this.idpatient;
    }

    public void setIdpatient(int idpatient) {
        this.idpatient = idpatient;
    }

}
