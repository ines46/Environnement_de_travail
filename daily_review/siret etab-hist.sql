use SIRET;

create TABLE etablissement (
	siren varchar(9) comment 'numero siren',
	nic	varchar (5) comment 'Numéro interne de classement de l\'établissement',
	siret varchar (14) comment 'Numéro Siret',
	statutDiffusionEtablissement varchar(1) comment 'Statut de diffusion de l’établissement',
	dateCreationEtablissement	datetime comment 'Date de création de l’établissement',
	trancheEffectifsEtablissement	varchar(2) comment 'Tranche d’effectif salarié de l’établissement',
	anneeEffectifsEtablissement	datetime comment 'Année de validité de la tranche d’effectif salarié de l’établissement',
	activitePrincipaleRegistreMetiersEtablissement	varchar(6) comment'Activité exercée par l’artisan inscrit au registre des métiers',
	dateDernierTraitementEtablissement	datetime comment 'Date du dernier traitement de l’établissement dans le répertoire Sirene',
	etablissementSiege	varchar(5) comment 'Qualité de siège ou non de l’établissement',
	nombrePeriodesEtablissement	varchar(2) comment 'Nombre de périodes de l’établissement',
	complementAdresseEtablissement	varchar(38) comment 'Complément d’adresse',
	numeroVoieEtablissement	varchar(6) comment 'Numéro de voie',
	indiceRepetitionEtablissement varchar(1) comment 'Indice de répétition dans la voie',
	typeVoieEtablissement varchar(4) comment 'Type de voie',
	libelleVoieEtablissement varchar(100) comment 'Libellé de voie',
	codePostalEtablissement	varchar(5) comment 'Code postal',
	libelleCommuneEtablissement varchar(100) comment 'Libellé de la commune',
	libelleCommuneEtrangerEtablissement varchar(100) comment 'Libellé de la commune pour un établissement situé à l’étranger',
	distributionSpecialeEtablissement varchar(26) comment 'Distribution spéciale de l’établissement',
	codeCommuneEtablissement varchar(5) comment 'Code commune de l’établissement',
	codeCedexEtablissement varchar(9) comment 'Code cedex',
	libelleCedexEtablissement varchar(100) comment 'Libellé du code cedex',
	codePaysEtrangerEtablissement varchar(5) comment 'Code pays pour un établissement situé à l’étranger',
	libellePaysEtrangerEtablissement varchar(100) comment 'Libellé du pays pour un établissement situé à l’étranger',
	complementAdresse2Etablissement varchar(38) comment 'Complément d’adresse secondaire',
	numeroVoie2Etablissement varchar(6) comment 'Numéro de la voie de l’adresse secondaire',
	indiceRepetition2Etablissement varchar(1) comment 'Indice de répétition dans la voie pour l’adresse secondaire',
	typeVoie2Etablissement varchar(4) comment 'Type de voie de l’adresse secondaire',
	libelleVoie2Etablissement varchar(100) comment 'Libellé de voie de l’adresse secondaire',
	codePostal2Etablissement varchar(5) comment 'Code postal de l’adresse secondaire',
	libelleCommune2Etablissement varchar(100) comment 'Libellé de la commune de l’adresse secondaire',
	libelleCommuneEtranger2Etablissement varchar(100) comment 'Libellé de la commune de l’adresse secondaire pour un établissement situé à l’étranger',
	distributionSpeciale2Etablissement varchar(26) comment 'Distribution spéciale de l’adresse secondaire de l’établissement',
	codeCommune2Etablissement varchar(5) comment 'Code commune de l’adresse secondaire',
	codeCedex2Etablissement varchar(9) comment 'Code cedex de l’adresse secondaire',
	libelleCedex2Etablissement varchar(100) comment'Libellé du code cedex de l’adresse secondaire',
	codePaysEtranger2Etablissement varchar(5) comment 'Code pays de l’adresse secondaire pour un établissement situé à l’étranger',
	libellePaysEtranger2Etablissement varchar(100) comment 'Libellé du pays de l’adresse secondaire pour un établissement situé à l’étranger',
	dateDebut datetime comment 'Date de début d\'une période d\'historique d\'un établissement',
	etatAdministratifEtablissement varchar(1) comment 'État administratif de l’établissement',
	enseigne1Etablissement varchar(50) comment 'Première ligne d’enseigne de l’établissement',
	enseigne2Etablissement varchar(50) comment 'Deuxième ligne d’enseigne de l’établissement',
	enseigne3Etablissement varchar(50) comment 'Troisième ligne d’enseigne de l’établissement',
	denominationUsuelleEtablissement varchar(100) comment'Dénomination usuelle de l’établissement',
	activitePrincipaleEtablissement	varchar(6) comment 'Activité principale de l\'établissement pendant la période',
	nomenclatureActivitePrincipaleEtablissement varchar(8) comment 'Nomenclature d’activité de la variable activitePrincipaleEtablissement',
	caractereEmployeurEtablissement	varchar(1) comment 'Caractère employeur de l’établissement');
    
select * from etablissement;









create table etab_hist (
	siren varchar(9) comment 'Numéro Siren',
	nic	varchar(5) comment 'interne de classement de l\'établissement',
	siret varchar(14) comment 'Numéro Siret',
	dateFin	datetime comment 'Date de fin d\'une période d\'historique d\'un établissement',
	dateDebut datetime comment 'Date de début d\'une période d\'historique d\'un établissement',
	etatAdministratifEtablissement varchar(1) comment 'État administratif de l’établissement',
	changementEtatAdministratifEtablissement varchar(5) comment 'Indicatrice de changement de l’état administratif de l’établissement',
	enseigne1Etablissement varchar(50) comment 'Première ligne d’enseigne de l’établissement',
	enseigne2Etablissement varchar(50) comment 'Deuxième ligne d’enseigne de l’établissement',
	enseigne3Etablissement varchar(100) comment 'Troisième ligne d’enseigne de l’établissement',
	changementEnseigneEtablissement varchar(5) comment 'Indicatrice de changement de l’enseigne de l’établissement',
	denominationUsuelleEtablissement varchar(100) comment 'Dénomination usuelle de l’établissement',
	changementDenominationUsuelleEtablissement varchar(5) comment 'Indicatrice de changement de la dénomination usuelle de l’unité légale',
	activitePrincipaleEtablissement	varchar(6) comment 'Activité principale de l\'établissement pendant la période',
	nomenclatureActivitePrincipaleEtablissement	varchar(8) comment 'Nomenclature d’activité de la variable activitePrincipaleEtablissement',
	changementActivitePrincipaleEtablissement varchar(5) comment 'Indicatrice de changement de l’activité principale de l’établissement',
	caractereEmployeurEtablissement	varchar(1) comment 'Caractère employeur de l’établissement',
	changementCaractereEmployeurEtablissement varchar(5) comment 'Indicatrice de changement du caractère employeur de l’établissement');
    
select activitePrincipaleEtablissement, nomenclatureActivitePrincipaleEtablissement, codePostalEtablissement from etablissement where codePostalEtablissement like '130%';

create table etab_marseille as(select * from etablissement where codePostalEtablissement like '130%');
select * from etab_marseille;
select * from etab_hist;

select activitePrincipaleEtablissement, codePostalEtablissement, Code, Libellé from section_2008
	inner join niv_2008 on section_2008.Code=niv_2008.NIV1
    inner join etab_marseille on niv_2008.NIV5=etab_marseille.activitePrincipaleEtablissement;
    
create index ind_activite on etab_marseille (activitePrincipaleEtablissement, nomenclatureActivitePrincipaleEtablissement);
show columns from etab_marseille;
show index from etab_marseille;

select * from section_2008 
	inner join niv_2008 on section_2008.Code=niv_2008.NIV1
    INNER Join etab_marseille on niv_2008.NIV5=etab_marseille.activitePrincipaleEtablissement
    where nomenclatureActivitePrincipaleEtablissement ='NAFRev2'
	union
select * from section_2003
	inner join niv_2003 on section_2003.Code=niv_2003.N_17
    inner join etab_marseille on niv_2003.N_700=etab_marseille.activitePrincipaleEtablissement
    where nomenclatureActivitePrincipaleEtablissement ='NAFRev1'
	union    
select * from section_1993 
	inner join niv_1993 on section_1993.Code=niv_1993.N_17
    inner join etab_marseille on niv_1993.N_700=etab_marseille.activitePrincipaleEtablissement
    where nomenclatureActivitePrincipaleEtablissement ='NAF1993'
	union
select * from nomenclature_1973
	inner join etab_marseille on nomenclature_1973.NAP600=etab_marseille.activitePrincipaleEtablissement
    WHERE nomenclatureActivitePrincipaleEtablissement='NAP';
    
    
select activitePrincipaleEtablissement, nomenclatureActivitePrincipaleEtablissement, codePostalEtablissement, Code, Libellé from etab_marseille
inner join niv_2008 on etab_marseille.activitePrincipaleEtablissement=niv_2008.NIV5
inner join section_2008 on niv_2008.NIV1=section_2008.Code
where nomenclatureActivitePrincipaleEtablissement='NAFRev2'
union
select activitePrincipaleEtablissement, nomenclatureActivitePrincipaleEtablissement, codePostalEtablissement , Code, Libellé from etab_marseille
inner join niv_2003 on etab_marseille.activitePrincipaleEtablissement=niv_2003.N_700
inner join section_2003 on niv_2003.N_17=section_2003.code
where nomenclatureActivitePrincipaleEtablissement='NAFRev1'
union
select activitePrincipaleEtablissement, nomenclatureActivitePrincipaleEtablissement, codePostalEtablissement ,Code,Libellé from etab_marseille
inner join niv_1993 on etab_marseille.activitePrincipaleEtablissement=niv_1993.N_700
inner join section_1993 on niv_1993.N_17=section_1993.Code
where nomenclatureActivitePrincipaleEtablissement='NAF1993'
union
select activitePrincipaleEtablissement, nomenclatureActivitePrincipaleEtablissement, codePostalEtablissement , NAP600, LIB_NAP15 from  etab_marseille
inner join nomenclature_1973 on etab_marseille.activitePrincipaleEtablissement=nomenclature_1973.NAP600
where nomenclatureActivitePrincipaleEtablissement='NAP';

create index ind_niv_2008 on niv_2008 (NIV1,NIV5);
SHOW INDEX FROM niv_2008;
select count(*) from etab_marseille;
show columns from etablissement;
select * from etab_marseille limit 100;

select datediff(now(), dateDebut) as durée from etab_marseille limit 20;

# nombre d'etablissement par secteur
select Code, count(*) as etablissement_par_secteur from etab_marseille 
inner join niv_2008 on etab_marseille.activitePrincipaleEtablissement=niv_2008.NIV5
inner join section_2008 on niv_2008.NIV1=section_2008.Code
where nomenclatureActivitePrincipaleEtablissement='NAFRev2' AND Code='A'
union
select Code, count(*) as etablissement_par_secteur from etab_marseille 
inner join niv_2008 on etab_marseille.activitePrincipaleEtablissement=niv_2008.NIV5
inner join section_2008 on niv_2008.NIV1=section_2008.Code
where nomenclatureActivitePrincipaleEtablissement='NAFRev2' AND  Code='B'
union
select Code, count(*) as etablissement_par_secteur from etab_marseille 
inner join niv_2008 on etab_marseille.activitePrincipaleEtablissement=niv_2008.NIV5
inner join section_2008 on niv_2008.NIV1=section_2008.Code
where nomenclatureActivitePrincipaleEtablissement='NAFRev2' AND  Code='C'
union
select Code, count(*) as etablissement_par_secteur from etab_marseille 
inner join niv_2008 on etab_marseille.activitePrincipaleEtablissement=niv_2008.NIV5
inner join section_2008 on niv_2008.NIV1=section_2008.Code
where nomenclatureActivitePrincipaleEtablissement='NAFRev2' AND Code='D'
union
select Code, count(*) as etablissement_par_secteur from etab_marseille 
inner join niv_2008 on etab_marseille.activitePrincipaleEtablissement=niv_2008.NIV5
inner join section_2008 on niv_2008.NIV1=section_2008.Code
where nomenclatureActivitePrincipaleEtablissement='NAFRev2' AND Code='E'
union
select Code, count(*) as etablissement_par_secteur from etab_marseille 
inner join niv_2008 on etab_marseille.activitePrincipaleEtablissement=niv_2008.NIV5
inner join section_2008 on niv_2008.NIV1=section_2008.Code
where nomenclatureActivitePrincipaleEtablissement='NAFRev2' AND Code='F'
union
select Code, count(*) as etablissement_par_secteur from etab_marseille 
inner join niv_2008 on etab_marseille.activitePrincipaleEtablissement=niv_2008.NIV5
inner join section_2008 on niv_2008.NIV1=section_2008.Code
where nomenclatureActivitePrincipaleEtablissement='NAFRev2' AND Code='G'
union
select Code, count(*) as etablissement_par_secteur from etab_marseille 
inner join niv_2008 on etab_marseille.activitePrincipaleEtablissement=niv_2008.NIV5
inner join section_2008 on niv_2008.NIV1=section_2008.Code
where nomenclatureActivitePrincipaleEtablissement='NAFRev2' AND Code='H'
union
select Code, count(*) as etablissement_par_secteur from etab_marseille 
inner join niv_2008 on etab_marseille.activitePrincipaleEtablissement=niv_2008.NIV5
inner join section_2008 on niv_2008.NIV1=section_2008.Code
where nomenclatureActivitePrincipaleEtablissement='NAFRev2' AND Code='I'
union
select Code, count(*) as etablissement_par_secteur from etab_marseille 
inner join niv_2008 on etab_marseille.activitePrincipaleEtablissement=niv_2008.NIV5
inner join section_2008 on niv_2008.NIV1=section_2008.Code
where nomenclatureActivitePrincipaleEtablissement='NAFRev2' AND Code='J'
union
select Code, count(*) as etablissement_par_secteur from etab_marseille 
inner join niv_2008 on etab_marseille.activitePrincipaleEtablissement=niv_2008.NIV5
inner join section_2008 on niv_2008.NIV1=section_2008.Code
where nomenclatureActivitePrincipaleEtablissement='NAFRev2' AND Code='K'
union
select Code, count(*) as etablissement_par_secteur from etab_marseille 
inner join niv_2008 on etab_marseille.activitePrincipaleEtablissement=niv_2008.NIV5
inner join section_2008 on niv_2008.NIV1=section_2008.Code
where nomenclatureActivitePrincipaleEtablissement='NAFRev2' AND Code='L'
union
select Code, count(*) as etablissement_par_secteur from etab_marseille 
inner join niv_2008 on etab_marseille.activitePrincipaleEtablissement=niv_2008.NIV5
inner join section_2008 on niv_2008.NIV1=section_2008.Code
where nomenclatureActivitePrincipaleEtablissement='NAFRev2' AND Code='M'
union
select Code, count(*) as etablissement_par_secteur from etab_marseille 
inner join niv_2008 on etab_marseille.activitePrincipaleEtablissement=niv_2008.NIV5
inner join section_2008 on niv_2008.NIV1=section_2008.Code
where nomenclatureActivitePrincipaleEtablissement='NAFRev2' AND Code='N'
union
select Code, count(*) as etablissement_par_secteur from etab_marseille 
inner join niv_2008 on etab_marseille.activitePrincipaleEtablissement=niv_2008.NIV5
inner join section_2008 on niv_2008.NIV1=section_2008.Code
where nomenclatureActivitePrincipaleEtablissement='NAFRev2' AND Code='O'
union
select Code, count(*) as etablissement_par_secteur from etab_marseille 
inner join niv_2008 on etab_marseille.activitePrincipaleEtablissement=niv_2008.NIV5
inner join section_2008 on niv_2008.NIV1=section_2008.Code
where nomenclatureActivitePrincipaleEtablissement='NAFRev2' AND Code='P'
union
select Code, count(*) as etablissement_par_secteur from etab_marseille 
inner join niv_2008 on etab_marseille.activitePrincipaleEtablissement=niv_2008.NIV5
inner join section_2008 on niv_2008.NIV1=section_2008.Code
where nomenclatureActivitePrincipaleEtablissement='NAFRev2' AND Code='Q'
union
select Code, count(*) as etablissement_par_secteur from etab_marseille 
inner join niv_2008 on etab_marseille.activitePrincipaleEtablissement=niv_2008.NIV5
inner join section_2008 on niv_2008.NIV1=section_2008.Code
where nomenclatureActivitePrincipaleEtablissement='NAFRev2' AND Code='R'
union
select Code, count(*) as etablissement_par_secteur_2008 from etab_marseille 
inner join niv_2008 on etab_marseille.activitePrincipaleEtablissement=niv_2008.NIV5
inner join section_2008 on niv_2008.NIV1=section_2008.Code
where nomenclatureActivitePrincipaleEtablissement='NAFRev2' AND Code='S'
union
select Code, count(*) as etablissement_par_secteur_2008 from etab_marseille 
inner join niv_2008 on etab_marseille.activitePrincipaleEtablissement=niv_2008.NIV5
inner join section_2008 on niv_2008.NIV1=section_2008.Code
where nomenclatureActivitePrincipaleEtablissement='NAFRev2' AND Code='T'
union
select Code, count(*) as etablissement_par_secteur_2008 from etab_marseille 
inner join niv_2008 on etab_marseille.activitePrincipaleEtablissement=niv_2008.NIV5
inner join section_2008 on niv_2008.NIV1=section_2008.Code
where nomenclatureActivitePrincipaleEtablissement='NAFRev2' AND Code='U'
union
select Code, count(*) as etablissement_par_secteur_2003 from etab_marseille
inner join niv_2003 on etab_marseille.activitePrincipaleEtablissement=niv_2003.N_700
inner join section_2003 on niv_2003.N_17=section_2003.code
where nomenclatureActivitePrincipaleEtablissement='NAFRev1' and Code='A'
union
select Code, count(*) as etablissement_par_secteur_2003 from etab_marseille
inner join niv_2003 on etab_marseille.activitePrincipaleEtablissement=niv_2003.N_700
inner join section_2003 on niv_2003.N_17=section_2003.code
where nomenclatureActivitePrincipaleEtablissement='NAFRev1' and Code='B'
union
select Code, count(*) as etablissement_par_secteur_2003 from etab_marseille
inner join niv_2003 on etab_marseille.activitePrincipaleEtablissement=niv_2003.N_700
inner join section_2003 on niv_2003.N_17=section_2003.code
where nomenclatureActivitePrincipaleEtablissement='NAFRev1' and Code='C'
union
select Code, count(*) as etablissement_par_secteur_2003 from etab_marseille
inner join niv_2003 on etab_marseille.activitePrincipaleEtablissement=niv_2003.N_700
inner join section_2003 on niv_2003.N_17=section_2003.code
where nomenclatureActivitePrincipaleEtablissement='NAFRev1' and Code='D'
union
select Code, count(*) as etablissement_par_secteur_2003 from etab_marseille
inner join niv_2003 on etab_marseille.activitePrincipaleEtablissement=niv_2003.N_700
inner join section_2003 on niv_2003.N_17=section_2003.code
where nomenclatureActivitePrincipaleEtablissement='NAFRev1' and Code='E'
union
select Code, count(*) as etablissement_par_secteur_2003 from etab_marseille
inner join niv_2003 on etab_marseille.activitePrincipaleEtablissement=niv_2003.N_700
inner join section_2003 on niv_2003.N_17=section_2003.code
where nomenclatureActivitePrincipaleEtablissement='NAFRev1' and Code='F'
union
select Code, count(*) as etablissement_par_secteur_2003 from etab_marseille
inner join niv_2003 on etab_marseille.activitePrincipaleEtablissement=niv_2003.N_700
inner join section_2003 on niv_2003.N_17=section_2003.code
where nomenclatureActivitePrincipaleEtablissement='NAFRev1' and Code='G'
UNION
select Code, count(*) as etablissement_par_secteur_2003 from etab_marseille
inner join niv_2003 on etab_marseille.activitePrincipaleEtablissement=niv_2003.N_700
inner join section_2003 on niv_2003.N_17=section_2003.code
where nomenclatureActivitePrincipaleEtablissement='NAFRev1' and Code='H'
union
select Code, count(*) as etablissement_par_secteur_2003 from etab_marseille
inner join niv_2003 on etab_marseille.activitePrincipaleEtablissement=niv_2003.N_700
inner join section_2003 on niv_2003.N_17=section_2003.code
where nomenclatureActivitePrincipaleEtablissement='NAFRev1' and Code='I'
UNION
select Code, count(*) as etablissement_par_secteur_2003 from etab_marseille
inner join niv_2003 on etab_marseille.activitePrincipaleEtablissement=niv_2003.N_700
inner join section_2003 on niv_2003.N_17=section_2003.code
where nomenclatureActivitePrincipaleEtablissement='NAFRev1' and Code='J'
UNION
select Code, count(*) as etablissement_par_secteur_2003 from etab_marseille
inner join niv_2003 on etab_marseille.activitePrincipaleEtablissement=niv_2003.N_700
inner join section_2003 on niv_2003.N_17=section_2003.code
where nomenclatureActivitePrincipaleEtablissement='NAFRev1' and Code='K'
UNION
select Code, count(*) as etablissement_par_secteur_2003 from etab_marseille
inner join niv_2003 on etab_marseille.activitePrincipaleEtablissement=niv_2003.N_700
inner join section_2003 on niv_2003.N_17=section_2003.code
where nomenclatureActivitePrincipaleEtablissement='NAFRev1' and Code='L'
UNION
select Code, count(*) as etablissement_par_secteur_2003 from etab_marseille
inner join niv_2003 on etab_marseille.activitePrincipaleEtablissement=niv_2003.N_700
inner join section_2003 on niv_2003.N_17=section_2003.code
where nomenclatureActivitePrincipaleEtablissement='NAFRev1' and Code='M'
UNION
select Code, count(*) as etablissement_par_secteur_2003 from etab_marseille
inner join niv_2003 on etab_marseille.activitePrincipaleEtablissement=niv_2003.N_700
inner join section_2003 on niv_2003.N_17=section_2003.code
where nomenclatureActivitePrincipaleEtablissement='NAFRev1' and Code='N'
UNION
select Code, count(*) as etablissement_par_secteur_2003 from etab_marseille
inner join niv_2003 on etab_marseille.activitePrincipaleEtablissement=niv_2003.N_700
inner join section_2003 on niv_2003.N_17=section_2003.code
where nomenclatureActivitePrincipaleEtablissement='NAFRev1' and Code='O'
UNION
select Code, count(*) as etablissement_par_secteur_2003 from etab_marseille
inner join niv_2003 on etab_marseille.activitePrincipaleEtablissement=niv_2003.N_700
inner join section_2003 on niv_2003.N_17=section_2003.code
where nomenclatureActivitePrincipaleEtablissement='NAFRev1' and Code='P'
UNION
select Code, count(*) as etablissement_par_secteur_2003 from etab_marseille
inner join niv_2003 on etab_marseille.activitePrincipaleEtablissement=niv_2003.N_700
inner join section_2003 on niv_2003.N_17=section_2003.code
where nomenclatureActivitePrincipaleEtablissement='NAFRev1' and Code='Q';

# 2ème methode plus rapide

select Libellé,Code, count(*) as etablissement_par_secteur_2008 from etab_marseille 
inner join niv_2008 on etab_marseille.activitePrincipaleEtablissement=niv_2008.NIV5
inner join section_2008 on niv_2008.NIV1=section_2008.Code
where nomenclatureActivitePrincipaleEtablissement='NAFRev2' group by Libellé,Code
union
select Libellé, Code,count(*) as etablissement_par_secteur_2003 from etab_marseille
inner join niv_2003 on etab_marseille.activitePrincipaleEtablissement=niv_2003.N_700
inner join section_2003 on niv_2003.N_17=section_2003.code
where nomenclatureActivitePrincipaleEtablissement='NAFRev1' group by Libellé, Code
union
select libellé, Code, count(*) as etablissement_par_secteur_1993 from etab_marseille
inner join niv_1993 on etab_marseille.activitePrincipaleEtablissement=niv_1993.N_700
inner join section_1993 on niv_1993.N_17=section_1993.Code
where nomenclatureActivitePrincipaleEtablissement='NAF1993' group by Libellé, Code
union
select LIB_NAP15, NAP600, count(*) as etablissement from etab_marseille
inner join nomenclature_1973 on etab_marseille.activitePrincipaleEtablissement=nomenclature_1973.NAP600
where nomenclatureActivitePrincipaleEtablissement='NAP' group by LIB_NAP15, NAP600;

# nombre d'etablissement par arrondissement

select codePostalEtablissement, count(*) as arrondissement from etab_marseille where codePostalEtablissement ='13001'
union 
select codePostalEtablissement, count(*) as arrondissement from etab_marseille where codePostalEtablissement ='13002'
UNION
select codePostalEtablissement, count(*) as arrondissement from etab_marseille where  codePostalEtablissement='13003'
UNION
select codePostalEtablissement, count(*) as arrondissement from etab_marseille where  codePostalEtablissement='13004'
UNION
SELECT codePostalEtablissement, count(*) as arrondissement from etab_marseille where codePostalEtablissement='13005'
union
select codePostalEtablissement, count(*) as arrondissement from etab_marseille where codePostalEtablissement='13006'
UNION
SELECT codePostalEtablissement, COUNT(*) AS arrondissement from etab_marseille where codePostalEtablissement='13007'
union
select codePostalEtablissement, count(*) as arrondissement from etab_marseille where codePostalEtablissement='13008'
UNION
select codePostalEtablissement, count(*) as arrondissement from etab_marseille where codePostalEtablissement='13009'
UNION 
SELECT codePostalEtablissement, COUNT(*) as arrondissement from etab_marseille where codePostalEtablissement='13010'
UNION
SELECT codePostalEtablissement, COUNT(*) AS arrondissement from etab_marseille where codePostalEtablissement='13011'
UNION
SELECT codePostalEtablissement, COUNT(*) AS arrondissement from etab_marseille where codePostalEtablissement='13012'
UNION 
SELECT codePostalEtablissement, COUNT(*) AS arrondissement from etab_marseille where codePostalEtablissement='13013'
UNION
select codePostalEtablissement, count(*) as arrondissement from etab_marseille where codePostalEtablissement='13014'
union
select codePostalEtablissement, count(*) as arrondissement from etab_marseille where codePostalEtablissement='13015'
UNION
SELECT codePostalEtablissement, count(*) as arrondissement from etab_marseille where codePostalEtablissement='13016';

# 2ème methode plus rapide

select codePostalEtablissement, count(*) as etablissement_par_arrondissement from etab_marseille group by codePostalEtablissement;


# nombre d'etablissement par secteur + par arrondissemnt
select Libellé,Code, codePostalEtablissement, count(*) as etablissement_par_secteur_2008 from etab_marseille 
inner join niv_2008 on etab_marseille.activitePrincipaleEtablissement=niv_2008.NIV5
inner join section_2008 on niv_2008.NIV1=section_2008.Code
where nomenclatureActivitePrincipaleEtablissement='NAFRev2' group by Libellé,Code, codePostalEtablissement
union
select Libellé, Code, codePostalEtablissement, count(*) as etablissement_par_secteur_2003 from etab_marseille
inner join niv_2003 on etab_marseille.activitePrincipaleEtablissement=niv_2003.N_700
inner join section_2003 on niv_2003.N_17=section_2003.code
where nomenclatureActivitePrincipaleEtablissement='NAFRev1' group by Libellé, Code, codePostalEtablissement
union
select libellé, Code, codePostalEtablissement, count(*) as etablissement_par_secteur_1993 from etab_marseille
inner join niv_1993 on etab_marseille.activitePrincipaleEtablissement=niv_1993.N_700
inner join section_1993 on niv_1993.N_17=section_1993.Code
where nomenclatureActivitePrincipaleEtablissement='NAF1993' group by Libellé, Code, codePostalEtablissement
union
select LIB_NAP15, NAP600, codePostalEtablissement, count(*) as etablissement from etab_marseille
inner join nomenclature_1973 on etab_marseille.activitePrincipaleEtablissement=nomenclature_1973.NAP600
where nomenclatureActivitePrincipaleEtablissement='NAP' group by LIB_NAP15, NAP600, codePostalEtablissement;


# durée de vie moyenne

select enseigne1Etablissement, dateDebut, datediff(now(), dateDebut) from etab_marseille;
SELECT count(datediff(now(), dateDebut)) as durée from etab_marseille;
select count(*) from etab_marseille;
select dateDebut from etab_marseille;
select * from etab_hist limit 100;
select * from etab_marseille limit 100;
select avg(datediff(dateFin, dateDebut)) as durée from etab_hist;

select etab_hist.dateDebut, libelleCommuneEtablissement, (datediff(etab_hist.dateDebut, etab_marseille.dateCreationEtablissement)/365) as durée_moyenne_annee from etab_hist
inner join etab_marseille on etab_hist.siret=etab_marseille.siret
where etab_hist.changementActivitePrincipaleEtablissement=1 and etab_hist.etatAdministratifEtablissement='F' group by libelleCommuneEtablissement limit 10;

select (datediff( '2020-01-21', '1981-10-23'))/365 as ans;
select timestampdiff(year, '2020-01-21', '1981-10-23') as ans;

select avg(timestampdiff(year, etab_marseille.dateCreationEtablissement, etab_hist.dateDebut)) as duree from etab_hist
inner join etab_marseille on etab_hist.siret=etab_marseille.siret
where etab_hist.changementActivitePrincipaleEtablissement=1 and etab_hist.etatAdministratifEtablissement='F'  limit 2;

select * from etab_hist limit 100;
create index index_dateDebut on etab_hist (dateDebut);
show index from etab_hist;


# evolution du nombre d'etablissement ces 10 dernieres années

# ancienneté des établissement toujours ouverts
select enseigne1Etablissement, dateDebut, datediff(now(), dateDebut) from etab_marseille;

# proportion des etablissemnts selon leurs classifications






    



    


    