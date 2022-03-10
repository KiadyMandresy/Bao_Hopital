package com.rh.projet.service;

import java.util.List;
import java.util.Optional;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.rh.projet.repositories.CorpsmedicalRepository;
import com.rh.projet.entities.Corpsmedical;

@Service
public class CorpsmedicalService {


    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Autowired
   private CorpsmedicalRepository repo;
    
    public List<Corpsmedical> ListAll() {
        return repo.findAll();
    }
    public void Save(Corpsmedical p){
        repo.save(p);
   }
    public void Delete(int p){
        repo.deleteById(p);
    } 
    public Optional<Corpsmedical> Find(int id){
        return repo.findById(id);
    }
}
