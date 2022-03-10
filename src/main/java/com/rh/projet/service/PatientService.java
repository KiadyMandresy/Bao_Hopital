package com.rh.projet.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.rh.projet.repositories.PatientRepository;
import com.rh.projet.entities.Patient;

@Service
public class PatientService {

    @Autowired
   private PatientRepository repo;
    
    public List<Patient> ListAll() {
        return repo.findAll();
    }
    public void Save(Patient p){
         repo.save(p);
    }
    public void Delete(int p){

            repo.deleteById(p);       
        
     
    } 
    public Optional<Patient> Find(int id){
        return repo.findById(id);
    }
}
