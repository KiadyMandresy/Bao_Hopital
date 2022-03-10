# RH
# Dossier pour tout les repositories du projet
# repositories JPA 
# Explication code :  
    Repositories :
        *Mila annotation @Repository : tyh no anokafana ny connexion anaty base 
        *Interface ny ato + extends JpaRepository  avec en parametre mila entities izy + Integer 
        *Tsy azo adino ny miteny oe nativeQuery=true amin farany 

# Exemple code : 
    # @Repository
    # public interface  NameRepositorie extends JpaRepository<Entities, Integer> { 
    #     # select no otran zao raha specific 
    #     # afaka mamaerina amin fomba ze tina : Integer,String,Object,Entites na tableau any reo objet reo ary
    #     @Query(value="select login(?1,?2) ",nativeQuery = true)
    #     Integer login(String identifiant,String mdp);
    # 
    #     # raha manao modification de otran zao fotsiny si demande specific
    #     @Modifying
    #     @Query(value = "INSERT INTO photo ( idsignalement,path) VALUES ( ?1, ?2 );",nativeQuery = true)
    #     @Transactional
    #     void add(Integer ids,String path);
    # }