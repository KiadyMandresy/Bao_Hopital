# RH
# Dossier pour tout les entities du projet
# Entities 
# Explication code :   
    Entitites :
        *Mila annotation @Entities : ilazana oe entities anaty base io 
        *Mila annotation @Table : ilazana oe tyh ny nom de table anaty base 
        *Ny entities nefa misy contrainte fa tsy manin mila id nenazy ny table vao mande aradalana 
            + De apina anio annotation io
            @Id
            @GeneratedValue(strategy = GenerationType.AUTO)
        *Mila constructeur roa 
            1-vide
            2-sans Id
        *Convention :
            Nom du fichier :
                NameEntities.java
                asio Entities apres anarana    
#################################################### 
# Exemple code : 
    # @Entity
    # @Table(name="mpandray_view")
    # public class NameClass {
    #     @Id
    #     @GeneratedValue(strategy = GenerationType.AUTO)
    #     private Integer id;
    #     public String identifiant;
    #     public String mdp;
    # 
    #     public NameClass() {
    #     }
    # 
    #     public NameClass(String identifiant, String mdp) { 
    #         this.identifiant = identifiant;
    #         this.mdp = mdp;
    #     }    
