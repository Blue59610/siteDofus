DROP TABLE IF EXISTS Classe, Colors, Character_Level, Character_Infos, Work, Object_type, Object, Resource CASCADE;

CREATE TABLE Classe
(
	id serial PRIMARY KEY,
	name text NOT NULL
);

INSERT INTO Classe VALUES (1, "Ecaflip"), (2, "Eniripsa"), (3, "Iop"), (4, "Crâ"), (5, "Féca"), (6, "Sacrieur"), (7, "Sadida"), 
(8, "Osamodas"), (9, "Enutrof"), (10, "Sram"), (11, "Xélor"), (12, "Pandawa"), (13, "Roublard"), (14, "Zobal"), (15, "Steamer"),
(16, "Eliotrope"), (17, "Huppermage"), (18, "Ouginak");

CREATE TABLE Colors
(
	id serial PRIMARY KEY,
	c1 text NOT NULL,
	c2 text NOT NULL,
	c3 text NOT NULL,
	c4 text NOT NULL,
	c5 text NOT NULL
);

INSERT INTO Colors VALUES (1, "#FFD188", "#FEFDA6", "#38476E", "#38476E", "#FFFFFF");

CREATE TABLE Character_Level
(
	id serial PRIMARY KEY,
	necessaryXP bigint NOT NULL,
	necessaryXPsinceBeginning bigint NOT NULL
);

INSERT INTO Character_Level VALUES (1, 0, 0), (2, 110, 110), (3, 650, 760), (4, 1500, 2260), (5, 2800, 5060), (6, 4800, 9860), (7, 7300, 17160);
INSERT INTO Character_Level VALUES (199, 3703616000, 0), (200, 5555424000, 0);

CREATE TABLE Character_Infos
(
	id serial PRIMARY KEY,
	pseudo text NOT NULL,
	classe int REFERENCES Classe(id),
	level int REFERENCES Character_Level(id),
	gender boolean NOT NULL,
	colors int REFERENCES Colors(id)
);

INSERT INTO Character_Infos VALUES (1, "Blue-Thunder", 3, 200, 1, 1), (2, "Chrono-Blue", 11, 199, 0, 1), (3, "Blue-Trainer", 8, 0, 1, 1), (4, "Doctor-Blue", 2, 0, 0, 1);

CREATE TABLE Work
(
	id serial PRIMARY KEY,
	name text NOT NULL
);

INSERT INTO Work VALUES (1, "Alchimiste"), (2, "Bijoutier"), (3, "Bricoleur"), (4, "Bûcheron"), (5, "Chasseur"), (6, "Cordomage"), (7, "Cordonnier"), (8, "Costumage"), 
(9, "Façomage"), (10, "Façonneur"), (11, "Forgemage"), (12, "Forgeron"), (13, "Joaillomage"), (14, "Mineur"), (15, "Paysan"), (16, "Pêcheur"), (17, "Sculptemage"), 
(18, "Sculpteur"), (19, "Tailleur");

CREATE TABLE Object_type
(
	id serial PRIMARY KEY,
	typeName text NOT NULL
);

INSERT INTO Object_type VALUES (1, "Amulette"), (2, "Anneau"), (3, "Bottes"), (4, "Bouclier"), (5, "Cape"), (6, "Ceinture"), (7, "Chapeau"), (8, "Dofus"), (9, "Sac à dos"),
(10, "Trophée"), (11, "Monture"), (12, "Familier"), (13, "Arme"), (14, "Idole"), (15, "Compagnon");

CREATE TABLE Object
(
	id serial PRIMARY KEY,
	type int REFERENCES Object_type(id),
	name text NOT NULL
);

CREATE TABLE Resource
(
	id serial PRIMARY KEY,
	name text NOT NULL,
	work int REFERENCES Work(id),
	gainXP bigint NOT NULL
);