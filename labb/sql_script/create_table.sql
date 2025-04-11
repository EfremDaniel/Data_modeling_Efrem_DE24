CREATE SCHEMA IF NOT EXISTS "YrkesCo";

set search_path TO "YrkesCo";


CREATE TABLE IF NOT EXISTS "YrkesCo"."stad" (
  "stad_id" SERIAL PRIMARY KEY,
  "stad" VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."adress" (
  "adress_id" SERIAL PRIMARY KEY,
  "stad_id" INTEGER NOT null REFERENCES "YrkesCo"."stad",
  "gatuadress" VARCHAR(100) NOT NULL,
  "postnummer" VARCHAR(6) NOT NULL
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."skola" (
  "skol_id" SERIAL PRIMARY KEY,
  "adress_id" INTEGER NOT null REFERENCES "YrkesCo"."adress",
  "skolnamn" VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."personuppgift" (
  "pu_id" SERIAL PRIMARY KEY,
  "adress_id" INTEGER NOT null REFERENCES "YrkesCo"."adress",
  "personnummer" CHAR(12) NOT NULL
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."program" (
  "program_id" VARCHAR(10) PRIMARY KEY,
  "programnamn" VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."skolprogram" (
  "skol_id" INTEGER NOT NULL REFERENCES "YrkesCo"."skola",
  "program_id" VARCHAR(10) NOT NULL REFERENCES "YrkesCo"."program",
  PRIMARY KEY ("skol_id", "program_id")
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."beviljad_omgång" (
  "bo_id" SERIAL PRIMARY KEY,
  "program_id" VARCHAR(10) NOT NULL REFERENCES "YrkesCo"."program",
  "år" VARCHAR(2) NOT NULL
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."kurs" (
  "kurskod" VARCHAR(10) PRIMARY KEY,
  "kursnamn" VARCHAR(50) NOT NULL,
  "poäng" INTEGER NOT NULL,
  "beskrivning" VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."kursprogram" (
  "kurskod" VARCHAR NOT NULL REFERENCES "kurs",
  "program_id" VARCHAR(10) NOT NULL REFERENCES "program",
  PRIMARY KEY ("kurskod", "program_id")
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."yrkesroll" (
  "yrkes_id" SERIAL PRIMARY KEY,
  "titel" VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."personal" (
  "personal_id" INTEGER PRIMARY KEY,
  "yrkes_id" INTEGER NOT NULL REFERENCES "yrkesroll",
  "förnamn" VARCHAR(50) NOT NULL,
  "efternamn" VARCHAR(100) NOT NULL,
  "epost" VARCHAR(255) NOT NULL,
  "telefon" VARCHAR(15) NOT NULL
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."konsultbolag" (
  "org_nummer" VARCHAR(11) PRIMARY KEY,
  "adress_id" INTEGER NOT NULL REFERENCES "adress",
  "bolagsnamn" VARCHAR(100) NOT NULL,
  "f_skatt" BOOL NOT NULL
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."konsult" (
  "org_nummer" VARCHAR(11) NOT NULL REFERENCES "konsultbolag",
  "personal_id" INTEGER NOT NULL REFERENCES "personal",
  "timpris" FLOAT NOT NULL,
  PRIMARY KEY ("org_nummer", "personal_id")
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."fastanställning" (
  "pu_id" INTEGER NOT NULL REFERENCES "personuppgift",
  "personal_id" INTEGER NOT NULL REFERENCES "personal",
  PRIMARY KEY ("pu_id", "personal_id")
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."skolpersonal" (
  "skol_id" INTEGER NOT NULL REFERENCES "skola",
  "personal_id" INTEGER NOT NULL REFERENCES "personal",
  PRIMARY KEY ("skol_id", "personal_id")
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."kurstillfälle" (
  "kurskod" VARCHAR NOT NULL REFERENCES "kurs",
  "personal_id" INTEGER NOT NULL REFERENCES "personal",
  PRIMARY KEY ("kurskod", "personal_id")
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."fristående_kurs" (
  "fk_id" SERIAL PRIMARY KEY,
  "skol_id" INTEGER REFERENCES "skola",
  "kurskod" VARCHAR REFERENCES "kurs",
  "personal_id" INTEGER REFERENCES "personal"
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."student" (
  "student_id" SERIAL PRIMARY KEY,
  "pu_id" INTEGER NOT NULL REFERENCES "personuppgift",
  "skol_id" INTEGER NOT NULL REFERENCES "skola",
  "förnamn" VARCHAR(50) NOT NULL,
  "efternamn" VARCHAR(100) NOT NULL,
  "epost" VARCHAR(255) NOT NULL,
  "telefon" VARCHAR(15) NOT NULL
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."fristående_student" (
  "fk_id" INTEGER NOT NULL REFERENCES "fristående_kurs",
  "student_id" INTEGER NOT NULL REFERENCES "student",
  PRIMARY KEY ("fk_id", "student_id")
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."klass" (
  "klass_id" SERIAL PRIMARY key,
  "bo_id" INTEGER NOT NULL REFERENCES "beviljad_omgång",
  "skol_id" INTEGER NOT NULL REFERENCES "skola",
  "personal_id" INTEGER NOT NULL REFERENCES "personal"
);


CREATE TABLE IF NOT EXISTS "YrkesCo"."antagen_student" (
  "klass_id" INTEGER NOT NULL REFERENCES "klass",
  "student_id" INTEGER NOT NULL REFERENCES "student",
  PRIMARY KEY ("klass_id", "student_id")
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."kursbetyg" (
  "kurskod" VARCHAR NOT NULL REFERENCES "kurs",
  "student_id" INTEGER NOT NULL REFERENCES "student",
  "betyg" VARCHAR(3) NOT NULL,
  PRIMARY KEY ("kurskod", "student_id")
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."ledningsgrupp" (
  "ledningsgrupp_id" SERIAL PRIMARY KEY,
  "program_id" VARCHAR(10) NOT NULL REFERENCES "program",
  "skol_id" INTEGER NOT NULL REFERENCES "skola"
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."ledningspersonal" (
  "ledningsgrupp_id" INTEGER NOT NULL REFERENCES "ledningsgrupp",
  "personal_id" INTEGER NOT NULL REFERENCES "personal",
  PRIMARY KEY ("ledningsgrupp_id", "personal_id")
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."ledningstudent" (
  "ledningsgrupp_id" INTEGER NOT NULL REFERENCES "ledningsgrupp",
  "student_id" INTEGER NOT NULL REFERENCES "student",
  PRIMARY KEY ("ledningsgrupp_id", "student_id")
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."företag" (
  "företag_org_nummer" VARCHAR(11) PRIMARY KEY,
  "företag_namn" VARCHAR(100) NOT NULL,
  "representant" VARCHAR(100) NOT NULL,
  "epost" VARCHAR(255) NOT NULL,
  "telefon" VARCHAR(15) NOT NULL
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."ledningsföretag" (
  "ledningsgrupp_id" INTEGER NOT NULL REFERENCES "ledningsgrupp",
  "företag_org_nummer" VARCHAR(11) NOT NULL REFERENCES "företag",
  PRIMARY KEY ("ledningsgrupp_id", "företag_org_nummer")
);

CREATE TABLE IF NOT EXISTS "YrkesCo"."protokoll" (
  "protokoll_id" SERIAL PRIMARY KEY,
  "ledningsgrupp_id" INTEGER NOT NULL REFERENCES "ledningsgrupp",
  "protokoll" VARCHAR(100000) NOT NULL,
  "datum" DATE NOT NULL
);

