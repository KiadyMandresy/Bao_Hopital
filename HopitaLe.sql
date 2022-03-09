/*Create sequence Doct start with 1 increment by 1;


create table Patient(
  id varchar(100)   Default ConCat ('Numero',nextval (Doct)) primary key,
);
foreing key => varchar , 

insert => elev 1*/



create database hopitale;
create role roles login password 'role';
alter database hopitale owner to roles;

\c hopitale;

create table Categorie(
    id serial primary key not null,
    Nom varchar(100)
);
insert into Categorie(Nom) values('vip avec une seule personne');
insert into Categorie(Nom) values('Reservés au 5 personnes au plus');
insert into Categorie(Nom) values('Reservés au 10 personnes au plus');
insert into Categorie(Nom) values('Reservés au 15 personnes au plus');

create table Maladie(
   id serial primary key not null,
   Nom varchar(100)
);
insert into Maladie(Nom) values ('CoronaVirus');
insert into Maladie(Nom) values ('Paludisme');
insert into Maladie(Nom) values ('Attaque cerebrale ou Accident Vasculaire Cerebral');
insert into Maladie(Nom) values ('Asthme');
insert into Maladie(Nom) values ('Coupures et plaies');
insert into Maladie(Nom) values ('Complications neonatales');
insert into Maladie(Nom) values ('Cancer du poumon');
insert into Maladie(Nom) values ('Alzheimer');
insert into Maladie(Nom) values ('Diabete');
insert into Maladie(Nom) values ('Insuffisance renale chronique');
insert into Maladie(Nom) values ('Tuberculose');
insert into Maladie(Nom) values ('Pneumonie');
insert into Maladie(Nom) values ('Alergie alimentaire');
insert into Maladie(Nom) values ('Convulsions');
insert into Maladie(Nom) values ('Hypertension arterielle');
insert into Maladie(Nom) values ('Cancer du sein');
insert into Maladie(Nom) values ('Cancer du rein');
insert into Maladie(Nom) values ('cancer de la thyroide');
insert into Maladie(Nom) values ('Troubles du rythme cardiaque');
insert into Maladie(Nom) values ('Epilepsie');
insert into Maladie(Nom) values ('Paralesie cerebrale');
insert into Maladie(Nom) values ('Embolie pulmonaire');
insert into Maladie(Nom) values ('Cholera');
insert into Maladie(Nom) values ('Pancreatite aigue');
insert into Maladie(Nom) values ('Meningite');
insert into Maladie(Nom) values ('Anaphylaxie');
insert into Maladie(Nom) values ('Septicemie');
insert into Maladie(Nom) values ('Fascite necrosante');
insert into Maladie(Nom) values ('Hepatite fulminante');
insert into Maladie(Nom) values ('Desequilibre hormonal');


create table niveau(
    id serial primary key not null,
    Nom varchar(100),
    Niveau varchar(50)
);
insert into niveau (Nom,Niveau) values ('Chirurgie','DES 3');
insert into niveau (Nom,Niveau) values ('Androlosie','DES 3');
insert into niveau (Nom,Niveau) values ('Cardiologie','DES 3');
insert into niveau (Nom,Niveau) values ('Anesthesiologie','DES 3');
insert into niveau (Nom,Niveau) values ('Dermatologie','DES 2');
insert into niveau (Nom,Niveau) values ('Gereatrie','DES 1');
insert into niveau (Nom,Niveau) values ('Gastro-enterologie','DES 3');
insert into niveau (Nom,Niveau) values ('Chirurgie','DES 2');
insert into niveau (Nom,Niveau) values ('Dermatologie','DES 3');
insert into niveau (Nom,Niveau) values ('Neurologie','DES 2');
insert into niveau (Nom,Niveau) values ('Neurologie','DES 3');
insert into niveau (Nom,Niveau) values ('Orthopedie','DES 3');
insert into niveau (Nom,Niveau) values ('Neurologie','DES 1');
insert into niveau (Nom,Niveau) values ('Chirurgie','DES 1');
insert into niveau (Nom,Niveau) values ('Anesthesiologie','DES 1');
insert into niveau (Nom,Niveau) values ('Gereatrie','DES 3');

create table Chambre(
   id serial primary key not null,
   Nom varchar(100),
   idCategorie int,
  foreign key (idCategorie) references Categorie(id)
);
create view chambres as (select Chambre.id as chambre_id, Chambre.Nom as chambre_nom,Categorie.Nom as Details from Chambre join Categorie on Chambre.idCategorie = Categorie.id);


insert into Chambre(Nom,idCategorie)values('Chambre 1',4);
insert into Chambre(Nom,idCategorie)values('Chambre 2',1);
insert into Chambre(Nom,idCategorie)values('Chambre 3',2);
insert into Chambre(Nom,idCategorie)values('Chambre 4',1);
insert into Chambre(Nom,idCategorie)values('Chambre 5',3);
insert into Chambre(Nom,idCategorie)values('Chambre 6',3);
insert into Chambre(Nom,idCategorie)values('Chambre 7',1);
insert into Chambre(Nom,idCategorie)values('Chambre 8',4);
insert into Chambre(Nom,idCategorie)values('Chambre 9',2);
insert into Chambre(Nom,idCategorie)values('Chambre 10',3);
insert into Chambre(Nom,idCategorie)values('Chambre 11',2);
insert into Chambre(Nom,idCategorie)values('Chambre 12',1);
insert into Chambre(Nom,idCategorie)values('Chambre 13',3);
insert into Chambre(Nom,idCategorie)values('Chambre 14',1);
insert into Chambre(Nom,idCategorie)values('Chambre 15',4);
insert into Chambre(Nom,idCategorie)values('Chambre 16',2);
insert into Chambre(Nom,idCategorie)values('Chambre 17',1);
insert into Chambre(Nom,idCategorie)values('Chambre 18',4);
insert into Chambre(Nom,idCategorie)values('Chambre 19',2);
insert into Chambre(Nom,idCategorie)values('Chambre 20',3);
insert into Chambre(Nom,idCategorie)values('Chambre 21',3);
insert into Chambre(Nom,idCategorie)values('Chambre 22',2);
insert into Chambre(Nom,idCategorie)values('Chambre 23',4);
insert into Chambre(Nom,idCategorie)values('Chambre 24',4);
insert into Chambre(Nom,idCategorie)values('Chambre 25',3);
insert into Chambre(Nom,idCategorie)values('Chambre 26',4);
insert into Chambre(Nom,idCategorie)values('Chambre 27',1);
insert into Chambre(Nom,idCategorie)values('Chambre 28',3);
insert into Chambre(Nom,idCategorie)values('Chambre 29',2);
insert into Chambre(Nom,idCategorie)values('Chambre 30',4);
insert into Chambre(Nom,idCategorie)values('Chambre 31',1);
insert into Chambre(Nom,idCategorie)values('Chambre 32',2);
insert into Chambre(Nom,idCategorie)values('Chambre 33',2);

create table Patient(
   id serial primary key not null,
   Nom varchar(100),
   Prenom varchar(100),
   Date_de_naissance Date,
   Sexe varchar(10),
   Photo varchar(100)
);
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Jade','Louise','1994-01-07','Fille','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Emma','Alice','1999-03-15','Fille','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Leo','Gabriel','2000-12-17','Garcon','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Raphael','Arthur','1984-07-25','Garcon','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Alice','Ambre','2009-08-10','Fille','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Jules','Louis','2001-01-16','Garcon','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Adam','Mael','2003-04-14','Garcon','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Lina','Rose','1999-05-27','Fille','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Lucas','Hugo','1995-12-14','Garcon','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Paul','Nathan','1971-03-15','Garcon','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Noe','Thiago','2000-07-11','Garcon','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Chloe','Mia','2006-12-11','Fille','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Lea','Mireille','1982-07-03','Fille','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Ali','Anas','1994-08-11','Fille','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Robin','Timeo','2010-02-17','Garcon','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Nolan','Malo','2007-02-15','Garcon','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Jenny','Pablo','1995-02-06','Fille','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Milan','Ilyes','1999-01-19','Fille','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Juliette','Livia','2000-12-18','Fille','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Jeanne','Apoline','1997-04-11','Fille','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Augustin','Samuel','2002-01-13','Garcon','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Logan','Mathys','2004-05-17','Fille','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Rayan','Alessio','1996-08-11','Garcon','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Basile','Ali','2001-07-18','Garcon','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Charlie','Antoine','2000-03-01','Garcon','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Diego','Noa','2007-07-05','Garcon','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Ayden','Owen','2006-07-04','Garcon','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Camille','Leandre','1995-01-31','Fille','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Ibrahim','Sohan','1998-09-30','Garcon','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Maxence','Imran','2012-12-25','Garcon','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Simon','Bathiste','1997-09-15','Garcon','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Kais','Soan','1984-03-14','Garcon','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Come','Joseph','1998-10-21','Garcon','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Lena','Lilly','2011-11-10','Fille','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Timothee','Wassim','2004-03-15','Garcon','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Marrin','Ali','2010-05-14','Garcon','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Julia','Alicia','1997-01-08','Fille','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Logan','Youssef','2001-08-17','Garcon','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Axel','Robin','2003-07-10','Garcon','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Enzo','Marceau','1998-12-08','Garcon','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Lolla','Assia','2005-08-21','Fille','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Sofia','Maelle','2005-12-04','Fille','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Capucine','Nora','2006-04-12','Fille','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Mya','Ella','1994-07-10','Fille','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Luna','Maelys','2015-05-17','Fille','');
insert into Patient(Nom,Prenom,Date_de_naissance,Sexe,Photo)values('Zoe','Livia','2016-07-05','Fille','');

create table Docteur(
   id serial primary key not null,
   Nom varchar(100),
   idNiveau int,
   foreign key (idNiveau) references niveau(id)
);
create view docteurs as(
select Docteur.id , Docteur.Nom ,niveau.Nom as Specialite, niveau.niveau from Docteur join Niveau on Docteur.idNiveau = Niveau.id);


insert into Docteur(Nom,idNiveau)values('Louis Pasteur',2);
insert into Docteur(Nom,idNiveau)values('Rene Laennec',6);
insert into Docteur(Nom,idNiveau)values('Ambroise Pare',3);
insert into Docteur(Nom,idNiveau)values('Jean-Martin Charcot',10);
insert into Docteur(Nom,idNiveau)values('Xavier Bichat',15);
insert into Docteur(Nom,idNiveau)values('Julien Offray',13);
insert into Docteur(Nom,idNiveau)values('Madeleine Bres',9);
insert into Docteur(Nom,idNiveau)values('Albert Calmette',16);
insert into Docteur(Nom,idNiveau)values('Emile Roux',7);
insert into Docteur(Nom,idNiveau)values('Jean-Nicolas Corvisart',1);
insert into Docteur(Nom,idNiveau)values('Martin Ulbert',4);
insert into Docteur(Nom,idNiveau)values('Francis Gabrelle',5);
insert into Docteur(Nom,idNiveau)values('Louis Koch',12);
insert into Docteur(Nom,idNiveau)values('William Harvey',13);
insert into Docteur(Nom,idNiveau)values('James Parkinson',11);
insert into Docteur(Nom,idNiveau)values('Julien Offray',14);
insert into Docteur(Nom,idNiveau)values('Edward Jenner',8);
insert into Docteur(Nom,idNiveau)values('Armand Trousseau',1);

create table Hospitalisation(
    id serial primary key not null,
    idPatient int,
    idChambre int,
    idMaladie int,
    Date_Entree Date,
    idDocteur int,
    idlit int,
    foreign key(idPatient) references Patient(id),
    foreign key(idChambre) references Chambre(id),
    foreign key(idMaladie) references Maladie(id),
    foreign key(idDocteur) references Docteur(id),
    foreign key(idlit) references lit(id)
);
create view  Hospitalisations as (
select  Hospitalisation.id as idH, Patient.Nom ,Patient.Prenom, Patient.Date_de_naissance,Patient.Sexe ,Hospitalisation.Date_Entree, Docteur.Nom as docteur from Hospitalisation join Patient on Patient.id = Hospitalisation.idPatient join Docteur on Docteur.id = Hospitalisation.idDocteur);

insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(25,11,3,'2022-11-04',10,11);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(43,8,12,'2020-05-04',4,2);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(40,11,28,'2021-12-25',5,1);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(15,6,2,'2022-11-20',16,4);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(3,9,4,'2020-06-19',7,5);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(1,7,10,'2022-11-19',3,6);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(22,33,2,'2021-01-18',1,3);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(35,31,29,'2020-11-21',6,7);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(2,4,21,'2021-01-30',2,8);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(31,1,29,'2020-05-12',17,9);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(10,3,11,'2021-06-04',14,10);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(5,10,22,'2020-05-08',12,12);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(21,32,12,'2022-11-20',17,13);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(14,30,1,'2020-01-02',13,14);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(37,13,20,'2020-01-18',18,16);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(16,8,19,'2020-04-17',1,17);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(4,6,19,'2020-01-27',15,19);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(30,5,5,'2022-06-16',17,20);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(42,6,7,'2021-01-11',8,23);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(45,10,23,'2019-11-15',12,24);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(32,26,24,'2019-02-16',11,28);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(41,23,6,'2022-01-16',4,34);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(6,14,16,'2021-02-04',16,25);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(23,24,25,'2021-06-09',14,32);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(44,27,14,'2019-02-14',13,26);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(13,29,14,'2022-08-27',2,18);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(11,4,16,'2021-05-25',10,27);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(18,6,30,'2022-09-15',14,15);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(26,25,7,'2022-12-26',14,29);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(8,10,24,'2019-05-24',7,30);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(36,2,25,'2022-11-19',9,31);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(12,10,15,'2019-12-25',15,33);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(19,4,4,'2019-05-18',2,35);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(34,16,14,'2021-05-01',8,39);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(39,22,16,'2021-12-14',10,36);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(33,11,12,'2022-05-29',11,37);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(7,21,26,'2019-12-30',18,38);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(46,15,30,'2019-12-25',2,43);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(28,11,14,'2021-12-18',4,21);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(17,28,13,'2019-12-31',3,22);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(27,11,17,'2019-12-21',18,40);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(9,5,17,'2021-06-12',11,46);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(38,19,8,'2019-12-12',16,41);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(20,18,27,'2022-02-14',5,42);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(29,9,18,'2021-01-25',9,44);
insert into Hospitalisation(idPatient,idChambre,idMaladie,Date_Entree,idDocteur,idlit)values(24,11,9,'2022-05-24',1,45);

create table Facture(
   id serial primary key not null,
   idHospitalisation int,
   Montant integer,
   DateO date,
   sejour int,
   foreign key (idHospitalisation) references Hospitalisation(id)
);
create view Factures as (select Hospitalisations.nom,Hospitalisations.prenom,Hospitalisations.Sexe, Hospitalisations.Date_Entree,Hospitalisations.docteur,Facture.DateO, Facture.sejour,Facture.Montant from Hospitalisations join Facture on Facture.idHospitalisation = Hospitalisations.idH );

insert into Facture(idHospitalisation,Montant,DateO,sejour)values(2,3000,'2022-11-04',10);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(3,3000,'2020-05-04',12);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(5,5000,'2021-12-25',7);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(7,2000,'2022-11-20',18);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(9,5000,'2020-06-19',31);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(11,5000,'2022-11-19',33);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(13,3000,'2021-01-18',20);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(16,1500,'2020-11-21',12);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(19,3000,'2021-01-30',11);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(18,1500,'2020-05-12',9);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(25,5000,'2021-06-04',10);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(30,3000,'2020-05-08',29);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(36,3000,'2022-11-20',20);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(43,5000,'2020-01-02',23);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(21,1500,'2020-01-18',40);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(46,3000,'2020-04-17',42);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(32,3000,'2020-01-27',20);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(34,5000,'2022-06-16',30);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(29,1500,'2021-01-11',39);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(40,3000,'2019-11-15',60);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(45,5000,'2019-02-16',12);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(26,3000,'2022-01-16',5);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(42,3000,'2021-02-04',10);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(23,1500,'2021-06-09',7);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(39,2000,'2019-02-14',14);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(31,4000,'2022-08-27',80);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(44,1500,'2021-05-25',190);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(41,5000,'2022-09-15',120);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(27,2000,'2022-12-26',15);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(37,5000,'2019-05-24',31);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(24,3000,'2022-11-19',37);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(33,5000,'2019-12-25',28);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(38,5000,'2021-12-18',7);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(28,3000,'2019-05-18',17);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(35,2000,'2021-05-01',36);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(14,3000,'2021-12-14',32);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(22,1500,'2022-05-29',167);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(20,3000,'2019-12-30',120);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(17,3000,'2019-12-25',16);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(15,1500,'2021-12-18',28);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(12,3000,'2019-12-31',24);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(10,3000,'2019-12-21',28);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(8,2000,'2021-06-12',20);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(6,5000,'2022-02-14',21);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(4,5000,'2021-01-25',8);
insert into Facture(idHospitalisation,Montant,DateO,sejour)values(1,3000,'2022-05-24',25);


create table Sortie(
   Dates date,
   idHospitalisation int,
  foreign key (idHospitalisation) references Hospitalisation(id)
);
create view sorties as (select Hospitalisations.nom,Hospitalisations.prenom,Hospitalisations.Sexe, Hospitalisations.Date_Entree,Sortie.Dates as Date_Sortie,Hospitalisations.docteur from Hospitalisations join Sortie on Hospitalisations.idH = Sortie.idHospitalisation); 

insert into Sortie(Dates,idHospitalisation)values('2023-02-10',13);
insert into Sortie(Dates,idHospitalisation)values('2022-01-19',32);
insert into Sortie(Dates,idHospitalisation)values('2020-05-23',40);
insert into Sortie(Dates,idHospitalisation)values('2022-02-18',1);
insert into Sortie(Dates,idHospitalisation)values('2022-12-30',31);
insert into Sortie(Dates,idHospitalisation)values('2023-03-15',15);
insert into Sortie(Dates,idHospitalisation)values('2021-11-12',39);
insert into Sortie(Dates,idHospitalisation)values('2020-08-05',12);
insert into Sortie(Dates,idHospitalisation)values('2023-05-12',23);
insert into Sortie(Dates,idHospitalisation)values('2020-02-27',38);
insert into Sortie(Dates,idHospitalisation)values('2020-07-02',14);
insert into Sortie(Dates,idHospitalisation)values('2020-03-21',41);
insert into Sortie(Dates,idHospitalisation)values('2021-07-20',3);
insert into Sortie(Dates,idHospitalisation)values('2022-01-01',46);
insert into Sortie(Dates,idHospitalisation)values('2020-05-03',24);
insert into Sortie(Dates,idHospitalisation)values('2021-05-13',7);
insert into Sortie(Dates,idHospitalisation)values('2020-06-14',22);
insert into Sortie(Dates,idHospitalisation)values('2019-11-16',30);
insert into Sortie(Dates,idHospitalisation)values('2023-02-28',6);
insert into Sortie(Dates,idHospitalisation)values('2022-07-23',45);
insert into Sortie(Dates,idHospitalisation)values('2020-09-14',16);
insert into Sortie(Dates,idHospitalisation)values('2022-04-28',21);
insert into Sortie(Dates,idHospitalisation)values('2022-08-16',42);
insert into Sortie(Dates,idHospitalisation)values('2021-02-15',5);
insert into Sortie(Dates,idHospitalisation)values('2021-08-04',25);
insert into Sortie(Dates,idHospitalisation)values('2021-04-04',44);
insert into Sortie(Dates,idHospitalisation)values('2020-10-15',17);
insert into Sortie(Dates,idHospitalisation)values('2020-04-16',33);
insert into Sortie(Dates,idHospitalisation)values('2019-07-14',26);
insert into Sortie(Dates,idHospitalisation)values('2021-02-16',8);
insert into Sortie(Dates,idHospitalisation)values('2022-06-26',34);
insert into Sortie(Dates,idHospitalisation)values('2023-01-02',18);
insert into Sortie(Dates,idHospitalisation)values('2020-07-08',2);
insert into Sortie(Dates,idHospitalisation)values('2021-09-09',27);
insert into Sortie(Dates,idHospitalisation)values('2022-05-12',36);
insert into Sortie(Dates,idHospitalisation)values('2020-07-15',9);
insert into Sortie(Dates,idHospitalisation)values('2020-11-24',43);
insert into Sortie(Dates,idHospitalisation)values('2019-12-24',28);
insert into Sortie(Dates,idHospitalisation)values('2022-01-16',19);
insert into Sortie(Dates,idHospitalisation)values('2022-12-25',20);
insert into Sortie(Dates,idHospitalisation)values('2023-10-11',4);
insert into Sortie(Dates,idHospitalisation)values('2022-07-25',37);
insert into Sortie(Dates,idHospitalisation)values('2023-04-16',29);
insert into Sortie(Dates,idHospitalisation)values('2021-12-07',10);
insert into Sortie(Dates,idHospitalisation)values('2020-02-25',35);
insert into Sortie(Dates,idHospitalisation)values('2022-06-13',11);

create table Transfert(
    id serial primary key not null,
    idPatient int,
    idChambre int,
    idlit int,
    Date_debut Date,
    Date_Sortie Date,
    foreign key (idPatient) references Patient(id),
    foreign key (idlit) references lit(id),
    foreign key (idChambre) references Chambre(id)
);
create view  Transferts as (
select   Patient.Nom as names,Patient.Prenom, Chambre.Nom ,lit.id as Numero_lit, Transfert.Date_debut,Transfert.Date_Sortie  from Transfert join Patient
 on Patient.id =Transfert.idPatient join Chambre on Transfert.idChambre = Chambre.id join lit on lit.id = Transfert.idlit);

insert into Transfert(idPatient,idChambre,Date_debut,Date_Sortie)values(2,21,'2022-12-07','2023-04-16');
insert into Transfert(idPatient,idChambre,Date_debut,Date_Sortie)values(10,1,'2020-02-13','2021-04-25');
insert into Transfert(idPatient,idChambre,Date_debut,Date_Sortie)values(9,4,'2019-12-14','2020-02-15');
insert into Transfert(idPatient,idChambre,Date_debut,Date_Sortie)values(12,12,'2019-04-20','2020-01-06');
insert into Transfert(idPatient,idChambre,Date_debut,Date_Sortie)values(45,10,'2020-01-12','2020-11-25');
insert into Transfert(idPatient,idChambre,Date_debut,Date_Sortie)values(26,22,'2021-05-15','2021-12-05');
insert into Transfert(idPatient,idChambre,Date_debut,Date_Sortie)values(4,18,'2022-01-02','2022-07-27');
insert into Transfert(idPatient,idChambre,Date_debut,Date_Sortie)values(28,2,'2020-04-01','2021-02-14');
insert into Transfert(idPatient,idChambre,Date_debut,Date_Sortie)values(21,3,'2019-11-21','2020-04-17');
insert into Transfert(idPatient,idChambre,Date_debut,Date_Sortie)values(3,20,'2020-10-14','2021-01-18');
insert into Transfert(idPatient,idChambre,Date_debut,Date_Sortie)values(30,3,'2021-12-19','2022-12-01');
insert into Transfert(idPatient,idChambre,Date_debut,Date_Sortie)values(24,21,'2019-10-13','2020-05-25');
insert into Transfert(idPatient,idChambre,Date_debut,Date_Sortie)values(12,1,'2020-04-12','2021-01-24');
insert into Transfert(idPatient,idChambre,Date_debut,Date_Sortie)values(31,15,'2021-06-15','2022-09-01');
insert into Transfert(idPatient,idChambre,Date_debut,Date_Sortie)values(41,16,'2020-12-03','2021-04-14');
insert into Transfert(idPatient,idChambre,Date_debut,Date_Sortie)values(40,11,'2019-12-24','2020-09-12');


create table Maladie_Patient(
     idPatient int,
     idMaladie int,
   foreign key (idPatient) references Patient(id),
   foreign key (idMaladie) references Maladie(id)
);
create view Maladie_Patients as (select Patient.Nom as Patient_Nom, Patient.Prenom,Patient.Sexe,Maladie.nom from Maladie_Patient join Patient on Maladie_Patient.idPatient = Patient.id  join Maladie on Maladie.id = Maladie_Patient.idMaladie);

insert into Maladie_Patient(idPatient,idMaladie)values(2,1);
insert into Maladie_Patient(idPatient,idMaladie)values(29,2);
insert into Maladie_Patient(idPatient,idMaladie)values(11,3);
insert into Maladie_Patient(idPatient,idMaladie)values(32,4);
insert into Maladie_Patient(idPatient,idMaladie)values(18,7);
insert into Maladie_Patient(idPatient,idMaladie)values(37,8);
insert into Maladie_Patient(idPatient,idMaladie)values(9,9);
insert into Maladie_Patient(idPatient,idMaladie)values(25,14);
insert into Maladie_Patient(idPatient,idMaladie)values(1,15);
insert into Maladie_Patient(idPatient,idMaladie)values(26,16);
insert into Maladie_Patient(idPatient,idMaladie)values(42,6);
insert into Maladie_Patient(idPatient,idMaladie)values(16,17);
insert into Maladie_Patient(idPatient,idMaladie)values(38,12);
insert into Maladie_Patient(idPatient,idMaladie)values(31,13);
insert into Maladie_Patient(idPatient,idMaladie)values(34,18);
insert into Maladie_Patient(idPatient,idMaladie)values(8,19);
insert into Maladie_Patient(idPatient,idMaladie)values(24,20);
insert into Maladie_Patient(idPatient,idMaladie)values(39,23);
insert into Maladie_Patient(idPatient,idMaladie)values(5,5);
insert into Maladie_Patient(idPatient,idMaladie)values(19,21);
insert into Maladie_Patient(idPatient,idMaladie)values(12,22);
insert into Maladie_Patient(idPatient,idMaladie)values(41,10);
insert into Maladie_Patient(idPatient,idMaladie)values(17,11);
insert into Maladie_Patient(idPatient,idMaladie)values(33,24);
insert into Maladie_Patient(idPatient,idMaladie)values(7,25);
insert into Maladie_Patient(idPatient,idMaladie)values(43,26);
insert into Maladie_Patient(idPatient,idMaladie)values(3,27);
insert into Maladie_Patient(idPatient,idMaladie)values(35,28);
insert into Maladie_Patient(idPatient,idMaladie)values(15,29);
insert into Maladie_Patient(idPatient,idMaladie)values(44,30);
insert into Maladie_Patient(idPatient,idMaladie)values(23,1);
insert into Maladie_Patient(idPatient,idMaladie)values(46,2);
insert into Maladie_Patient(idPatient,idMaladie)values(13,3);
insert into Maladie_Patient(idPatient,idMaladie)values(22,4);
insert into Maladie_Patient(idPatient,idMaladie)values(27,5);
insert into Maladie_Patient(idPatient,idMaladie)values(10,6);
insert into Maladie_Patient(idPatient,idMaladie)values(36,7);
insert into Maladie_Patient(idPatient,idMaladie)values(4,8);
insert into Maladie_Patient(idPatient,idMaladie)values(45,9);
insert into Maladie_Patient(idPatient,idMaladie)values(21,10);
insert into Maladie_Patient(idPatient,idMaladie)values(40,11);
insert into Maladie_Patient(idPatient,idMaladie)values(14,12);
insert into Maladie_Patient(idPatient,idMaladie)values(30,13);
insert into Maladie_Patient(idPatient,idMaladie)values(20,14);
insert into Maladie_Patient(idPatient,idMaladie)values(28,15);
insert into Maladie_Patient(idPatient,idMaladie)values(6,16);


create table lit(
    id serial primary key not null,
    idChambre int,
    foreign key (idChambre) references Chambre(id)
);
create view lits as (select lit.id as Numero_lit, chambres.chambre_nom,chambres.Details from lit join chambres on lit.idChambre = chambres.chambre_id);

insert into lit(idChambre)values(3);
insert into lit(idChambre)values(4);
insert into lit(idChambre)values(2);
insert into lit(idChambre)values(5);
insert into lit(idChambre)values(1);
insert into lit(idChambre)values(6);
insert into lit(idChambre)values(7);
insert into lit(idChambre)values(8);
insert into lit(idChambre)values(9);
insert into lit(idChambre)values(12);
insert into lit(idChambre)values(10);
insert into lit(idChambre)values(13);
insert into lit(idChambre)values(14);
insert into lit(idChambre)values(16);
insert into litidChambre)values(18);
insert into lit(idChambre)values(20);
insert into lit(idChambre)values(15);
insert into lit(idChambre)values(17);
insert into lit(idChambre)values(21);
insert into lit(idChambre)values(23);
insert into lit(idChambre)values(19);
insert into lit(idChambre)values(25);
insert into lit(idChambre)values(22);
insert into lit(idChambre)values(24);
insert into lit(idChambre)values(27);
insert into lit(idChambre)values(28);
insert into lit(idChambre)values(26);
insert into lit(idChambre)values(29);
insert into lit(idChambre)values(31);
insert into lit(idChambre)values(32);
insert into lit(idChambre)values(30);
insert into lit(idChambre)values(33);
insert into lit(idChambre)values(12);
insert into lit(idChambre)values(1);
insert into lit(idChambre)values(22);
insert into lit(idChambre)values(33);
insert into lit(idChambre)values(4);
insert into lit(idChambre)values(15);
insert into lit(idChambre)values(23);
insert into lit(idChambre)values(26);
insert into lit(idChambre)values(27);
insert into lit(idChambre)values(30);
insert into lit(idChambre)values(12);
insert into lit(idChambre)values(32);
insert into lit(idChambre)values(26);

create table tarif(
   idCategorie int,
   Prix int,
   Daty date,
   foreign key (idCategorie) references Categorie(id)
);
create view tarifs as (select tarif.idCategorie ,Categorie.nom, tarif.Prix, tarif.Daty from tarif join Categorie on tarif.idCategorie = Categorie.id);


insert into tarif(idCategorie, Prix, Daty)values(1,5000,'2022-02-27');
insert into tarif(idCategorie, Prix, Daty)values(2,3000,'2022-02-21');
insert into tarif(idCategorie, Prix, Daty)values(3,2000,'2022-02-25');
insert into tarif(idCategorie, Prix, Daty)values(4,1500,'2022-02-28');
