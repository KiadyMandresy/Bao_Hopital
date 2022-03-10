# RH
# Dossier pour tout les controller du projet
# Controller 
# Explication code :  
    Controller :
        *mila annotation @Controller vao mande 
        *mila annotation @RequestMapping hilazana ny url andehanany 
        *function anaty controller :
            *Methode roa iany no apesainy tsika : POST sy GET
            *Avec les parametre oe @RequestParam Map<String, Object> data, Model model, HttpSession session
                *data misy any le donne nalefao par le methode POST na GET
                *Model ao no asina ze objet alefan anaty view
                *session otran amin servlet rehetra iany fa tsy de mila lotra anio ngamba fa aleo eo
            # Parametre aza kitihana soa diso lalana eo 
            #RedirectView na String no averina :
                #RedirectView makany amin le url mintsy 
                #String makany amin fichier .html atsika
        *Convention :
            Nom du fichier :
                NameController.java
                asio Controller apres anarana    

# Exemple code : 
    # @Controller
    # @RequestMapping("/Url")
    # public class NameClassController {
    #    # Moyen d'appeller un repository 
    #    @Autowired
    #    NameRepository name;
    #
    #     @GetMapping("/Url")
    #     public String Index(@RequestParam Map<String, Object> data, Model model, HttpSession session) {
    #         model.addAttribute("key",object);
    #         return "index";
    #     }
    # 
    #     @PostMapping("/suiteUrl")
    #     public RedirectView login(@RequestParam Map<String, Object> data, Model model, HttpSession session) {
    #         return new RedirectView("/Url/index");
    #     }
