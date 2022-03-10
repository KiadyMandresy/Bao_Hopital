package com.rh.projet.repositories;



import com.rh.projet.entities.Corpsmedical;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;



@Repository
public interface CorpsmedicalRepository extends JpaRepository<Corpsmedical,Integer> {
    


 
}
