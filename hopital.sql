CREATE DATABASE hopital;
CREATE ROLE hopitaly LOGIN password 'hopital';
ALTER DATABASE hopital OWNER TO hopitaly;

CREATE TABLE categorie(
    id SERIAL PRIMARY KEY NOT NULL,
    categorie char(1),
    nombrelit INTEGER,
    tarif double precision
);

CREATE TABLE chambre(
    id SERIAL PRIMARY KEY NOT NULL,
    numero INTEGER,
    idcategorie INTEGER,
    CONSTRAINT fk_chambre_categorie FOREIGN KEY(id) REFERENCES categorie(id)
);

CREATE TABLE corpsmedical(
    id SERIAL PRIMARY KEY NOT NULL,
    nom VARCHAR(255),
    prenom VARCHAR(255),
    idgrade INTEGER,
    CONSTRAINT fk_corpsmedical_grade FOREIGN KEY(idgrade) REFERENCES grade(id)
);

CREATE TABLE grade(
    id SERIAL PRIMARY KEY NOT NULL,
    grade VARCHAR(100),
    tauxjourpatient double precision
);

CREATE TABLE lit(
    id SERIAL PRIMARY KEY NOT NULL,
    numero INTEGER,
    idchambre INTEGER,
    CONSTRAINT fk_lit_chambre FOREIGN KEY(idchambre ) REFERENCES chambre(id) 
);

CREATE TABLE patient(
    idpatient INTEGER PRIMARY KEY NOT NULL,
    nom VARCHAR(255),
    prenom VARCHAR(255),
    date_naissance DATE,
    sexe char(1) DEFAULT 'h',
    date_entree DATE,
    date_sortie DATE,
    avance boolean DEFAULT false,
    montantavance double precision DEFAULT 200000
);

CREATE TABLE patientlit(
    id SERIAL PRIMARY KEY NOT NULL,
    idlit INTEGER,
    idpatient INTEGER ,
    date_entree_lit DATE,
    date_sortie_lit DATE,
    CONSTRAINT fk_patientlit_lit FOREIGN KEY(idlit) REFERENCES lit(id),
    CONSTRAINT fk_patientlit_patient FOREIGN KEY(idpatient) REFERENCES patient(idpatient)  
);

CREATE TABLE patientlittemporaire(
    id serial PRIMARY KEY NOT NULL,
    idlit INTEGER,
    idpatient INTEGER ,
    date_entree_lit DATE,
    date_sortie_lit DATE,
    status boolean DEFAULT false,
    CONSTRAINT fk_patientlit_lit_0 FOREIGN KEY(idlit) REFERENCES lit(id),
    CONSTRAINT fk_patientlit_patient_0 FOREIGN KEY(idpatient) REFERENCES patient(idpatient)
);

CREATE TABLE payement(
    id SERIAL PRIMARY KEY NOT NULL,
    date DATE,
    montant double precision,
    idpatient INTEGER,
    CONSTRAINT fk_payement_patient FOREIGN KEY(idpatient) REFERENCES patient(idpatient)
);

CREATE TABLE role(
    id SERIAL PRIMARY KEY NOT NULL,
    date DATE,
    idcorpsmedical INTEGER,
    idpatient INTEGER,
    montant double precision
);

CREATE TABLE traitement(
    id SERIAL PRIMARY KEY NOT NULL,
    date DATE,
    idcorpsmedical INTEGER,
    idpatient INTEGER,
    montant double precision,
    traitement VARCHAR(255),
    CONSTRAINT fk_traitement_corpsmedical FOREIGN KEY(idcorpsmedical) REFERENCES corpsmedical(id),
    CONSTRAINT fk_traitement_patient FOREIGN KEY(idpatient ) REFERENCES patient(idpatient)
);

CREATE TABLE utilisateur(
    id SERIAL PRIMARY KEY NOT NULL,
    idrole INTEGER,
    login VARCHAR(255),
    mdp VARCHAR(255),
    CONSTRAINT fk_user_role FOREIGN KEY(idrole) REFERENCES role(id)
);

CREATE OR REPLACE VIEW chambreensemblet AS 
 SELECT c.id,
    c.numero,
    cat.nombrelit - (( SELECT count(p.idpatient) AS nombrepatient
           FROM patient p
             JOIN patientlit pl ON p.idpatient = pl.idpatient
             JOIN lit l ON pl.idlit = l.id
             JOIN chambre ch ON l.idchambre = c.id
             JOIN categorie cat_1 ON c.idcategorie = cat_1.id
          WHERE ch.id = c.id
          GROUP BY ch.id)) AS litrestant,
    cat.tarif,
    cat.categorie
   FROM chambre c
     JOIN categorie cat ON c.idcategorie = cat.id;


CREATE OR REPLACE VIEW chambrelibre AS 
 SELECT c.id,
    c.numero,
    cat.nombrelit - (( SELECT count(p.idpatient) AS nombrepatient
           FROM patient p
             JOIN patientlit pl ON p.idpatient = pl.idpatient
             JOIN lit l ON pl.idlit = l.id
             JOIN chambre ch ON l.idchambre = c.id
             JOIN categorie cat_1 ON c.idcategorie = cat_1.id
          WHERE ch.id = c.id
          GROUP BY ch.id)) AS litrestant,
    cat.tarif,
    cat.categorie
   FROM chambre c
     JOIN categorie cat ON c.idcategorie = cat.id
	WHERE (cat.nombrelit - (( SELECT count(p.idpatient) AS nombrepatient
           FROM patient p
             JOIN patientlit pl ON p.idpatient = pl.idpatient
             JOIN lit l ON pl.idlit = l.id
             JOIN chambre ch ON l.idchambre = c.id
             JOIN categorie cat_1 ON c.idcategorie = cat_1.id
          WHERE ch.id = c.id
          GROUP BY ch.id))) > 0;


CREATE OR REPLACE VIEW litlibre AS 
 SELECT id,
    numero
   FROM lit
	WHERE id NOT IN (Select idlit from patientlit);

CREATE OR REPLACE VIEW montantapayerchambre AS Select p.idpatient,max(p.nom) as nom,max(p.prenom) as prenom,sum(cat.tarif) as montant
from patient p join patientlit pl on p.idpatient = pl.idpatient
join lit l on pl.idlit = l.id
join chambre c on l.idchambre = c.id
join categorie cat on c.idcategorie = cat.id
group by p.idpatient; 

CREATE VIEW montantapayertraitement AS SELECT p.idpatient,max(p.nom) as nom,max(p.prenom) as prenom,sum(t.montant) as montant
from patient p join traitement t on p.idpatient = t.idpatient
join corpsmedical cm on t.idcorpsmedical = cm.id
join grade g on cm.idgrade = g.id
group by p.idpatient;

CREATE OR REPLACE VIEW patientLitchambre AS Select p.idpatient,p.nom,p.prenom,p.date_naissance,p.sexe,p.date_entree,p.date_sortie,l.numero as numeroLit,c.numero as numeroChambre,cat.tarif
from patient p join patientlit pl on p.idpatient = pl.idpatient
join lit l on pl.idlit = l.id
join chambre c on l.idchambre = c.id
join categorie cat on c.idcategorie = cat.id;

CREATE  VIEW patientPayement AS SELECT pa.date,p.idpatient,p.nom,p.prenom,p.montantavance as avance,pa.montant as montantPayement
from patient p join payement pa on p.idpatient = pa.idpatient;

CREATE  VIEW patientpayementtotal AS SELECT p.idpatient,max(p.nom) as nom,max(p.prenom) as prenom,max(p.montantavance)+sum(pa.montant) as montant
from patient p join payement pa on p.idpatient = pa.idpatient
group by p.idpatient;

CREATE VIEW patientTraitement AS SELECT t.date,p.idpatient,p.nom,p.prenom,cm.nom as nomCorpsMedical,cm.prenom as prenomCorpsMedical,g.grade,t.montant
from patient p join traitement t on p.idpatient = t.idpatient
join corpsmedical cm on t.idcorpsmedical = cm.id
join grade g on cm.idgrade = g.id;