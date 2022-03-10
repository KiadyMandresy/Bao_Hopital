package com.rh.projet.controller;

import com.rh.projet.entities.Corpsmedical;
import com.rh.projet.service.CorpsmedicalService;
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
public class CorpsmedicalController {


    @Autowired
    private CorpsmedicalService service;


    //Lister Tous les employes
    @GetMapping("/")
    public String ViewHomePage(Model model){
        List<Corpsmedical> listCorpsmedical = service.ListAll();
        model.addAttribute("listeCorpsmedical",listCorpsmedical);
        System.out.println("Get / ");
        return "index";
    } 

//Ajouter une employe
    @GetMapping("/new")
    public String Add(Model model){
        List<Corpsmedical> listCorpsmedical = service.ListAll();
        model.addAttribute("listeCorpsmedical",listCorpsmedical);
        model.addAttribute("Corpsmedical",new Corpsmedical());

        return "new";
    }
//Sauvegarder Corpsmedic 
    @RequestMapping(value="/save", method = RequestMethod.POST)
    public String SaveCorpsmedica(@ModelAttribute("Corpsmedical") Corpsmedical doc){
        service.Save(doc);
        System.out.println("Get / ");
        return "redirect:/";
    } 

//Modifier un Corpsmedic grace a son id
    @GetMapping("/edit/{id}")
    public ModelAndView Edit(@PathVariable(name="id")int id){
        ModelAndView mav = new ModelAndView("new");
         Optional<Corpsmedical> doc=service.Find(id);
        mav.addObject("Corpsmedical",doc);
        return mav;
    } 
     
//Supprimer une employe grace a son id
    @GetMapping("/delete/{id}")
    public String delete(@PathVariable(name="id")int id){
        service.Delete(id);
        
        return "redirect:/";
    }

    
}
