package com.rh.projet.controller;

import com.rh.projet.entities.Patient;
import com.rh.projet.service.PatientService;
import java.util.List;
import java.util.Optional;

import org.springframework.stereotype.Controller;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class PatientController {

    @Autowired
    List<Patient> ListPatient;

    @Autowired
    private PatientService service;

    //Lister Tous les employes
    @GetMapping("/")
    public String ViewHomePage(Model model){
        ListPatient = service.ListAll();
        model.addAttribute("listePatient",ListPatient);
        System.out.println("Get / ");
        return "index";
    } 

//Ajouter une employe
    @GetMapping("/new")
    public String Add(Model model){
        List<Patient> ListPatient = service.ListAll();
        model.addAttribute("ListPatient",ListPatient);
        model.addAttribute("Patient",new Patient());

        return "new";
    }
//Sauvegarder Patient 
    @RequestMapping(value="/save", method = RequestMethod.POST)
    public String SavePatient(@ModelAttribute("Patient") Patient p){
        service.Save(p);
        return "redirect:/";
    } 

//Modifier un Patient grace a son id
    @GetMapping("/edit/{id}")
    public ModelAndView Edit(@PathVariable(name="id")int id){
        ModelAndView mav = new ModelAndView("new");
        Optional<Patient> p=service.Find(id);
        mav.addObject("Patient",p);
        return mav;
    } 
     
//Supprimer une employe grace a son id
    @GetMapping("/delete/{id}")
    public String delete(@PathVariable(name="id")int id){
        service.Delete(id);
        
        return "redirect:/";
    }
}
