package com.rh.projet.entities;

import java.sql.Date;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.beans.factory.annotation.Autowired;

public class Patientlit {
    

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Autowired
    private int id;
    private int idlit;
    private int idpatient;
    private Date date_entree_lit;
    private Date date_sortie_lit;

    public Patientlit() {
    }

    public Patientlit(int id, int idlit, int idpatient, Date date_entree_lit, Date date_sortie_lit) {
        this.id = id;
        this.idlit = idlit;
        this.idpatient = idpatient;
        this.date_entree_lit = date_entree_lit;
        this.date_sortie_lit = date_sortie_lit;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIdlit() {
        return this.idlit;
    }

    public void setIdlit(int idlit) {
        this.idlit = idlit;
    }

    public int getIdpatient() {
        return this.idpatient;
    }

    public void setIdpatient(int idpatient) {
        this.idpatient = idpatient;
    }

    public Date getDate_entree_lit() {
        return this.date_entree_lit;
    }

    public void setDate_entree_lit(Date date_entree_lit) {
        this.date_entree_lit = date_entree_lit;
    }

    public Date getDate_sortie_lit() {
        return this.date_sortie_lit;
    }

    public void setDate_sortie_lit(Date date_sortie_lit) {
        this.date_sortie_lit = date_sortie_lit;
    }
}
