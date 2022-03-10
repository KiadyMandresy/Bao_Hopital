package com.rh.projet.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;
import javax.persistence.Id;
import org.springframework.beans.factory.annotation.Autowired;

@Entity
@Table(name="Chambre")
public class Chambre {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Autowired
    private int id;
    private String numero;
    private int idcategorie;
     
    
    public Chambre(){

    }

    public Chambre(int id, String numero, int idcategorie) {
        this.id = id;
        this.numero = numero;
        this.idcategorie = idcategorie;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNumero() {
        return this.numero;
    }

    public void setNumero(String numero) {
        this.numero = numero;
    }

    public int getIdcategorie() {
        return this.idcategorie;
    }

    public void setIdcategorie(int idcategorie) {
        this.idcategorie = idcategorie;
    }
    
}




