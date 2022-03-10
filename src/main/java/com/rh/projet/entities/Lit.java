package com.rh.projet.entities;



import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.beans.factory.annotation.Autowired;
public class Lit {
    
    
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Autowired
    private int id;
    private int numero;
    private int idchambre;

    public Lit() {
    }

    public Lit(int id, int numero, int idchambre) {
        this.id = id;
        this.numero = numero;
        this.idchambre = idchambre;
    }

    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getNumero() {
        return this.numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public int getIdchambre() {
        return this.idchambre;
    }

    public void setIdchambre(int idchambre) {
        this.idchambre = idchambre;
    }

}
