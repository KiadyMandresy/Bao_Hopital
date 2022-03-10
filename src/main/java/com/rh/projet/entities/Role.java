package com.rh.projet.entities;

import java.sql.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.beans.factory.annotation.Autowired;

public class Role {
    

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Autowired
    private int id;
    private Date date;
    private int idcorpsmedical;
    private int idpatient;
    private Double montant;

    public Role() {
    }

    public Role(int id, Date date, int idcorpsmedical, int idpatient, Double montant) {
        this.id = id;
        this.date = date;
        this.idcorpsmedical = idcorpsmedical;
        this.idpatient = idpatient;
        this.montant = montant;
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

    public int getIdcorpsmedical() {
        return this.idcorpsmedical;
    }

    public void setIdcorpsmedical(int idcorpsmedical) {
        this.idcorpsmedical = idcorpsmedical;
    }

    public int getIdpatient() {
        return this.idpatient;
    }

    public void setIdpatient(int idpatient) {
        this.idpatient = idpatient;
    }

    public Double getMontant() {
        return this.montant;
    }

    public void setMontant(Double montant) {
        this.montant = montant;
    }


}
