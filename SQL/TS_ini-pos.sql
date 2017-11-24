/*
-- =========================================================================== A
Activité : IFT187
Trimestre : 2017-3
Composant : Exemples/Herbivorie/Herbivorie_jeu1.sql
Encodage : UTF-8, sans BOM; fin de ligne Unix (LF)
Plateforme : PostgreSQL 9.3-9.6
Responsable : Luc.Lavoie@USherbrooke.ca
Version : 0.1.0a
Statut : base de développement
-- =========================================================================== A
*/

/*
-- =========================================================================== B
Ce jeu de données représente un ensemble minimal permettant d'exercer plusieurs
requêtes typiques.

L'initialisation est divisée en deux parties :
  1.  Les données issues du protocole expérimental
        (Etat, Peuplement, Taux, Arbre, Placette).
  2.  Les observations recueillies par la suite sur le terrain.
        (Plant, ObsDimension, ObsFloraison, ObsEtat)
      ces dernières doivent être extraites des carnets de terrain.

NOTE : à proprement parler, les données des placettes relèvent aussi d'observations
  faites sur le terrain. Celles-ci ont cependant été faites au départ et on s'est
  alors assuré qu'aucune donnée n'était manquante.
-- =========================================================================== B
*/

--
-- Partie 1
--
INSERT INTO Etat VALUES
  ('O', 'vivante'),
  ('B', 'broutée'),
  ('X', 'fanée'),
  ('C', 'cassée'),
  ('D', 'disparue'),
  ('N', 'non retrouvée');

INSERT INTO Peuplement VALUES
  ('ERHE', 'érablière à hêtre'),
  ('BEMI', 'bétulai à érable et sapin'),
  ('SABO', 'sapinière à bouleau'),
  ('SAPI', 'sapinière pure'),
  ('ERSA', 'érablière à sapin'),
  ('PEBO', 'pessière à bouleau');

INSERT INTO Taux VALUES
  ('A', 21, 30),
  ('B', 16, 20),
  ('C', 11, 15),
  ('D', 6, 10),
  ('E', 1, 5),
  ('F', 0, 0);

INSERT INTO Arbre VALUES
  ('ABIBAL', 'Abies balsamea'),
  ('ACESAC', 'Acer saccharum'),
  ('BETALL', 'Betula alleghaniensis'),
  ('BETCOR', 'Betula papyrifera var. cordifolia'),
  ('BETPAP', 'Betula papyrifera'),
  ('FAGGRA', 'Fagus grandifolia'),
  ('NA',     'non applicable (sans objet)'),
  ('PICMAR', 'Picea mariana'),
  ('SORSSP', 'Sorbus sp.');

INSERT INTO Placette VALUES
  ('A1', 'ERHE', 'E', 'E', 'F', 'F', 'D', 'E', 'D', 'F', 'C', 'ACESAC', 'FAGGRA', 'BETALL', '2017-07-25'),
  ('A5', 'BEMI', 'C', 'E', 'D', 'D', 'B', 'D', 'E', 'F', 'A', 'BETPAP', 'ACESAC', 'ABIBAL', '2017-07-25'),
  ('A7', 'SAPI', 'D', 'D', 'C', 'C', 'B', 'B', 'E', 'C', 'A', 'ABIBAL', 'BETCOR', 'SORSSP', '2017-08-01'),
  ('B1', 'ERHE', 'D', 'D', 'F', 'E', 'D', 'D', 'F', 'E', 'D', 'ACESAC', 'FAGGRA', 'BETPAP', '2017-07-25'),
  ('B5', 'ERHE', 'E', 'E', 'D', 'D', 'C', 'D', 'E', 'E', 'C', 'ACESAC', 'FAGGRA', 'ABIBAL', '2017-07-26'),
  ('B7', 'SABO', 'E', 'E', 'D', 'D', 'C', 'D', 'D', 'D', 'A', 'ABIBAL', 'BETCOR', 'PICMAR', '2017-08-02'),
  ('C1', 'ERHE', 'D', 'D', 'F', 'F', 'D', 'D', 'E', 'E', 'C', 'ACESAC', 'FAGGRA', 'NA',     '2017-07-26'),
  ('C5', 'ERSA', 'E', 'E', 'D', 'D', 'C', 'D', 'E', 'E', 'A', 'ACESAC', 'ABIBAL', 'PICMAR', '2017-07-26'),
  ('C7', 'PEBO', 'F', 'F', 'D', 'D', 'B', 'D', 'E', 'D', 'B', 'PICMAR', 'BETALL', 'ABIBAL', '2017-08-02');

--
-- Partie 2
--
INSERT INTO plant (id, placette, parcelle, date, note) VALUES ('MMA1040', 'A1', 4, '2017-05-08', '');
INSERT INTO plant (id, placette, parcelle, date, note) VALUES ('MMB1305', 'B1', 11, '2017-06-04', '');
INSERT INTO plant (id, placette, parcelle, date, note) VALUES ('MMB7103', 'B7', 6, '2017-06-01', '');
INSERT INTO plant (id, placette, parcelle, date, note) VALUES ('MMA1122', 'A1', 12, '2017-05-12', '');
INSERT INTO plant(id, placette, parcelle, date, note) VALUES ('MMB1009', 'B1', 1, '2017-05-13', '');
INSERT INTO plant (id, placette, parcelle, date, note) VALUES ('MMA5041', 'A5', 6, '2017-05-27', '');
INSERT INTO plant (id, placette, parcelle, date, note) VALUES ('MMA5186', 'A5', 15, '2017-05-27', '');
INSERT INTO plant (id, placette, parcelle, date, note) VALUES ('MMA5051', 'A5', 7, '2017-05-27', '');
INSERT INTO plant (id, placette, parcelle, date, note) VALUES ('MMB5103', 'B5', 9, '2017-05-23', '');
INSERT INTO plant(id, placette, parcelle, date, note) VALUES ('MMA7092', 'A7', 7, '2017-05-31', '');
INSERT INTO plant(id, placette, parcelle, date, note) VALUES ('MMC1185', 'C1', 9, '2017-05-17', '');
INSERT INTO plant(id, placette, parcelle, date, note) VALUES ('MMB5213', 'B5', 16, '2017-05-23', '');
INSERT INTO plant(id, placette, parcelle, date, note) VALUES ('MMA1197', 'A1', 19, '2017-05-12', '');
INSERT INTO plant (id, placette, parcelle, date, note) VALUES ('MMB7087', 'B7', 5, '2017-06-01', '');
INSERT INTO plant (id, placette, parcelle, date, note) VALUES ('MMC1085', 'C1', 6, '2017-05-17', '');

INSERT INTO obsdimension (id, longueur, largeur, date, note) VALUES ('MMA1040', 50, 35, '2017-05-08', 'pas jolie');
INSERT INTO obsdimension (id, longueur, largeur, date, note) VALUES ('MMA1040', 119, 84, '2017-06-04', '');
INSERT INTO obsdimension (id, longueur, largeur, date, note) VALUES ('MMA1040', 121, 87, '2017-07-10', '');
INSERT INTO obsdimension  (id, longueur, largeur, date, note) VALUES ('MMB1305', 113, 78, '2017-06-04', '');
INSERT INTO obsdimension (id, longueur, largeur, date, note) VALUES ('MMB7103', 22, 12, '2017-06-01', 'complètement à l''ombre tout le jour');
INSERT INTO obsdimension (id, longueur, largeur, date, note) VALUES ('MMB7103', 44, 26, '2017-06-20', '');
INSERT INTO obsdimension (id, longueur, largeur, date, note) VALUES ('MMA1122', 65, 46, '2017-05-12', '');
INSERT INTO obsdimension (id, longueur, largeur, date, note) VALUES ('MMA1122', 136, 101, '2017-06-04', '');
INSERT INTO obsdimension (id, longueur, largeur, date, note) VALUES ('MMA1122', 134, 103, '2017-07-10', 'manque 1 feuille');
INSERT INTO obsdimension  (id, longueur, largeur, date, note) VALUES ('MMB1009', 67, 63, '2017-05-13', '');
INSERT INTO obsdimension (id, longueur, largeur, date, note) VALUES ('MMA5041', 55, 45, '2017-05-27', '');

INSERT INTO obsfloraison (id, fleur, date, note) VALUES ('MMA1040', true, '2017-05-08', '');
INSERT INTO obsfloraison (id, fleur, date, note) VALUES ('MMB1305', false, '2017-06-04', '');
INSERT INTO obsfloraison (id, fleur, date, note) VALUES ('MMB7103', false, '2017-06-01', '');
INSERT INTO obsfloraison (id, fleur, date, note) VALUES ('MMA1122', false, '2017-05-12', '');
INSERT INTO obsfloraison (id, fleur, date, note) VALUES ('MMB1009', true, '2017-05-13', '');
INSERT INTO obsfloraison (id, fleur, date, note) VALUES ('MMA5041', false, '2017-05-27', '');
INSERT INTO obsfloraison (id, fleur, date, note) VALUES ('MMA5186', false, '2017-05-27', '');
INSERT INTO obsfloraison (id, fleur, date, note) VALUES ('MMA5051', false, '2017-05-27', '');
INSERT INTO obsfloraison (id, fleur, date, note) VALUES ('MMB5103', false, '2017-05-23', '');
INSERT INTO obsfloraison (id, fleur, date, note) VALUES ('MMA7092', true, '2017-05-31', '');
INSERT INTO obsfloraison (id, fleur, date, note) VALUES ('MMC1185', false, '2017-05-17', '');
INSERT INTO obsfloraison (id, fleur, date, note) VALUES ('MMB5213', false, '2017-05-23', '');
INSERT INTO obsfloraison (id, fleur, date, note) VALUES ('MMA1197', true, '2017-05-12', '');
INSERT INTO obsfloraison (id, fleur, date, note) VALUES ('MMB7087', false, '2017-06-01', '');
INSERT INTO obsfloraison(id, fleur, date, note) VALUES ('MMC1085', false, '2017-05-17', '');

INSERT INTO obsetat (id, etat, date, note) VALUES ('MMA1040', 'O', '2017-06-08', '');
INSERT INTO obsetat (id, etat, date, note) VALUES ('MMB1305', 'O', '2017-07-04', '');
INSERT INTO obsetat (id, etat, date, note) VALUES ('MMB7103', 'O', '2017-06-01', '');
INSERT INTO obsetat (id, etat, date, note) VALUES ('MMA1122', 'B', '2017-06-12', '');
INSERT INTO obsetat (id, etat, date, note) VALUES ('MMB1009', 'O', '2017-06-13', '');
INSERT INTO obsetat (id, etat, date, note) VALUES ('MMA5041', 'O', '2017-06-27', '');
INSERT INTO obsetat (id, etat, date, note) VALUES ('MMA5186', 'B', '2017-06-27', '');
INSERT INTO obsetat (id, etat, date, note) VALUES ('MMA5051', 'O', '2017-06-27', '');
INSERT INTO obsetat (id, etat, date, note) VALUES ('MMB5103', 'O', '2017-06-23', '');
INSERT INTO obsetat (id, etat, date, note) VALUES ('MMA7092', 'O', '2017-06-30', '');
-- Observation manquante                                        'MMC1185'
INSERT INTO obsetat (id, etat, date, note) VALUES ('MMB5213', 'O', '2017-06-23', '');
INSERT INTO obsetat (id, etat, date, note) VALUES ('MMA1197', 'O', '2017-06-12', '');
INSERT INTO obsetat (id, etat, date, note) VALUES ('MMB7087', 'C', '2017-06-15', '');
INSERT INTO obsetat (id, etat, date, note) VALUES ('MMC1085', 'D', '2017-05-17', '');

--CORRECT
INSERT INTO carnetmeteo
(date, temp_min, temp_max, vent_min, vent_max,
pres_min, pres_max, hum_min, hum_max, prec_mm, prec_typ, ensol) values ('2017-06-25', '-10', '10', '30', '499', '80', '200', '10', '10', '100', 'pluie', '600');

--VALEUR INCORRECT
INSERT INTO carnetmeteo
(date, temp_min, temp_max, vent_min, vent_max,
pres_min, pres_max, hum_min, hum_max, prec_mm, prec_typ, ensol) values ('2016-06-02', '-10', '10', '30', '499', '80', '200', NULL, '10', '100', 'Lave', '600');

--VALEUR INCORRECT
INSERT INTO carnetmeteo
(date, temp_min, temp_max, vent_min, vent_max,
pres_min, pres_max, hum_min, hum_max, prec_mm, prec_typ, ensol) values ('2017-07-09', '-10', '10', '30', '499', '80', '200', '10', '10', '100', 'pluie', '600');

--VALEUR INCORRECT
INSERT INTO carnetmeteo
(date, temp_min, temp_max, vent_min, vent_max,
pres_min, pres_max, hum_min, hum_max, prec_mm, prec_typ, ensol) values ('2016-06-14', 'papa', '10', '30', '499', 'noel', '200', '10', '10', '100', 'pluie', '600');

---INSERT NEW TAUX
INSERT INTO taux (tcat, tmin, tmax) VALUES ('X',31, 60);
INSERT INTO taux (tcat, tmin, tmax) VALUES ('Y',35, 40); --ERROR
INSERT INTO taux (tcat, tmin, tmax) VALUES ('Z',65, 70); --GOOD


/*
-- =========================================================================== Z
Contributeurs :
  (DAL) Diane.Auberson-Lavoie@USherbrooke.ca,
  (LL) Luc.Lavoie@USherbrooke.ca

Adresse, droits d'auteur et copyright :
  Groupe Metis
  Département d'informatique
  Faculté des sciences
  Université de Sherbrooke
  Sherbrooke (Québec)  J1K 2R1
  Canada
  http://info.usherbrooke.ca/llavoie/
  [CC-BY-NC-4.0 (http://creativecommons.org/licenses/by-nc/4.0)]

Tâches projetées :
  * Maintenir le script au fil de l'évolution de Herbivorie_cre.sql

Tâches réalisées :
2017-09-17 (LL) : Création
  * Version initiale.

Références :
[ddv] http://info.usherbrooke.ca/llavoie/enseignement/Exemples/Herbivorie/Herbivorie_DDV.pdf
[mod] http://info.usherbrooke.ca/llavoie/enseignement/Modules/
-- -----------------------------------------------------------------------------
-- fin de Exemples/Herbivorie/Herbivorie_jeu1.sql
-- =========================================================================== Z
*/
