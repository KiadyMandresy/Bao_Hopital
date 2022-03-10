package com.rh.projet.entities;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.beans.factory.annotation.Autowired;

public class Grade {
    

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Autowired
    private int id;
    private String grade;
    private Double tauxjourpatient;

    public Grade() {
    }

    public Grade(int id, String grade, Double tauxjourpatient) {
        this.id = id;
        this.grade = grade;
        this.tauxjourpatient = tauxjourpatient;
    }


    public int getId() {
        return this.id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getGrade() {
        return this.grade;
    }

    public void setGrade(String grade) {
        this.grade = grade;
    }

    public Double getTauxjourpatient() {
        return this.tauxjourpatient;
    }

    public void setTauxjourpatient(Double tauxjourpatient) {
        this.tauxjourpatient = tauxjourpatient;
    }

    }
