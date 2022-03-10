<!DOCTYPE HTML>
     <html xmlns:th="http://www.thymeleaf.org">
     
     <head>
         <title>Ajout</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
             integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
     </head>
     <body>
         <div class="row">
             <div class="col-md-2"></div>
             <div class="col-md-8">
                 <form action="">
                     <div class="form-row">
                         <div class="col"> <label for="">Anne d'utilisation</label> <input type="text" name="anne" id="" class="form-control"></div>
                         <div class="col"> <label for="">Variation</label> <input type="text" name="variation" id="" class="form-control"></div>
                     </div> 
                     <div class="form-check">
                         <input type="radio" name="typeVariation" id="" value="1" class="form-check-input">
                         <label for="" class="form-check-label">Degressive</label>  
                     </div>
                     <div class="form-check">
                         <input type="radio" name="typeVariation" id="" value="2" class="form-check-input">
                         <label for="" class="form-check-label">Lineaire</label>  
                     </div>
                     <button type="submit" class="btn btn-primary">Valider</button>
                 </form>
                 <div class="row">
                     <div th:if="${ liste!=null }" >
                         <div th:if="${ lineaire==true }" >
                             <table>
                                 <thead>
                                     <tr>
                                         <th>Date</th>
                                         <th>Valeur Initiale</th>
                                         <th>Taux lineaire</th>
                                         <th>Amortissement lineaire</th>
                                         <th>Amortissement cumule</th>
                                         <th>Valeur comptable</th>
                                     </tr>
                                 </thead>
                                 <tbody>
     
                                     <tr th:each="item:${liste}">
                                         <th th:text="${item.getDate()}"></th>
                                         <th th:text="${item.getPrixInitial()}"></th>
                                         <th th:text="${item.getTauxLineaire()}"></th>
                                         <th th:text="${item.getAmortissementLineaire()}"></th>
                                         <th th:text="${item.getAmortissementCumule()}"></th>
                                         <th th:text="${item.getValeurComptable()}"></th>
                                     </tr>
                                 </tbody>
                             </table>
                         </div>
                         <div th:if="${ degressive==true }" >
                         
                         </div>
                     </div>
                 </div>
             </div>
             <div class="col-md-2"></div>
         </div>
     </body>
     <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
         integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
         crossorigin="anonymous"></script>
     <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
         integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
         crossorigin="anonymous"></script>
     <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
         integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
         crossorigin="anonymous"></script>
     </html> 