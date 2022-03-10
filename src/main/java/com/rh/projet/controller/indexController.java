package com.rh.projet.controller;

import com.rh.projet.repositories.*;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class indexController {
    
    @RequestMapping("/index")
     public class NameClassController {
         
        @Autowired
        CorpsmedicalRepository name;
    
         @GetMapping("/")
         public String Index(@RequestParam Map<String, Object> data, Model model, HttpSession session) {
             model.addAttribute("key",name);
             return "index";
         }
     
         @PostMapping("/index/login")
         public RedirectView login(@RequestParam Map<String, Object> data, Model model, HttpSession session) {
             return new RedirectView("/index/login");
         }
}

}
