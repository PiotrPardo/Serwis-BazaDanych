/*
Created: 05.05.2018
Modified: 07.05.2018
Model: Serwis
Database: Oracle 11g Release 2
*/


-- Create tables section -------------------------------------------------

-- Table Serwisy

CREATE TABLE "Serwisy"(
  "Serwis_ID" Integer NOT NULL,
  "Nazwa" Varchar2(30 ) NOT NULL,
  "Data_zalozenia" Date NOT NULL,
  "NIP" Varchar2(10 ) NOT NULL,
  "Nr_telefonu" Varchar2(12 ) NOT NULL,
  "Adres_ID" Integer NOT NULL
)
/

-- Create indexes for table Serwisy

CREATE INDEX "IX_Serwis_ma_adres" ON "Serwisy" ("Adres_ID")
/

-- Add keys for table Serwisy

ALTER TABLE "Serwisy" ADD CONSTRAINT "Serwis_PK" PRIMARY KEY ("Serwis_ID")
/

ALTER TABLE "Serwisy" ADD CONSTRAINT "NIP_AK" UNIQUE ("NIP")
/

ALTER TABLE "Serwisy" ADD CONSTRAINT "Nazwa_AK" UNIQUE ("Nazwa")
/

-- Table Warsztaty

CREATE TABLE "Warsztaty"(
  "Warsztat_ID" Integer NOT NULL,
  "Nazwa" Varchar2(30 ) NOT NULL,
  "Data_otwarcia" Date NOT NULL,
  "Godzina_otwarcia" Date,
  "Godzina_zamkniecia" Date,
  "Serwis_ID" Integer NOT NULL,
  "Adres ID" Integer
)
/

-- Create indexes for table Warsztaty

CREATE INDEX "IX_Serwis zarzadza" ON "Warsztaty" ("Serwis_ID")
/

CREATE INDEX "IX_Warsztat_ma_adres" ON "Warsztaty" ("Adres ID")
/

-- Add keys for table Warsztaty

ALTER TABLE "Warsztaty" ADD CONSTRAINT "Warsztat_PK" PRIMARY KEY ("Warsztat_ID")
/

ALTER TABLE "Warsztaty" ADD CONSTRAINT "Nazwaa" UNIQUE ("Nazwa")
/

-- Table Pracownicy

CREATE TABLE "Pracownicy"(
  "Pracownik_ID" Integer NOT NULL,
  "Imie" Varchar2(30 ) NOT NULL,
  "Nazwisko" Varchar2(50 ) NOT NULL,
  "Pesel" Char(11 ) NOT NULL,
  "Data_urodzenia" Date NOT NULL,
  "Email" Varchar2(30 ),
  "Nr_telefonu" Varchar2(12 ) NOT NULL,
  "Data_zatrudnienia" Date,
  "Serwis_ID" Integer NOT NULL,
  "Warsztat_ID" Integer,
  "Stanowisko ID" Integer NOT NULL,
  "Adres ID" Integer NOT NULL
)
/

-- Create indexes for table Pracownicy

CREATE INDEX "IX_Serwis zatrudnia" ON "Pracownicy" ("Serwis_ID")
/

CREATE INDEX "IX_Warsztat_ma_pracownikow" ON "Pracownicy" ("Warsztat_ID")
/

CREATE INDEX "IX_Pracownik_ma_stanowisko" ON "Pracownicy" ("Stanowisko ID")
/

CREATE INDEX "IX_Pracownik_ma_adres" ON "Pracownicy" ("Adres ID")
/

-- Add keys for table Pracownicy

ALTER TABLE "Pracownicy" ADD CONSTRAINT "Pracownik_PK" PRIMARY KEY ("Pracownik_ID")
/

ALTER TABLE "Pracownicy" ADD CONSTRAINT "PESEL" UNIQUE ("Pesel")
/

ALTER TABLE "Pracownicy" ADD CONSTRAINT "Nr_AK" UNIQUE ("Nr_telefonu")
/

-- Table Klienci

CREATE TABLE "Klienci"(
  "Klient_ID" Integer NOT NULL,
  "Imie" Varchar2(20 ) NOT NULL,
  "Nazwisko" Varchar2(50 ) NOT NULL,
  "Nr_telefonu" Varchar2(12 ) NOT NULL,
  "Email" Varchar2(50 )
)
/

-- Add keys for table Klienci

ALTER TABLE "Klienci" ADD CONSTRAINT "Unique_Identifier4" PRIMARY KEY ("Klient_ID")
/

ALTER TABLE "Klienci" ADD CONSTRAINT "nr_telefonu" UNIQUE ("Nr_telefonu")
/

-- Table Samochody

CREATE TABLE "Samochody"(
  "Samochod_ID" Integer NOT NULL,
  "Marka" Varchar2(20 ) NOT NULL,
  "Model" Varchar2(20 ) NOT NULL,
  "Nr_rejestracyjny" Varchar2(12 ) NOT NULL,
  "VIN" Varchar2(18 ) NOT NULL,
  "Data_przegladu" Date,
  "Klient_ID" Integer NOT NULL
)
/

-- Create indexes for table Samochody

CREATE INDEX "IX_Klient posiada samochod" ON "Samochody" ("Klient_ID")
/

-- Add keys for table Samochody

ALTER TABLE "Samochody" ADD CONSTRAINT "Samochod_PK" PRIMARY KEY ("Samochod_ID")
/

ALTER TABLE "Samochody" ADD CONSTRAINT "Nr_rejestracyjny" UNIQUE ("Nr_rejestracyjny")
/

ALTER TABLE "Samochody" ADD CONSTRAINT "VIN_AK" UNIQUE ("VIN")
/

-- Table Rezerwacje

CREATE TABLE "Rezerwacje"(
  "Rezerwacja_ID" Integer NOT NULL,
  "Data_rezerwacji" Date NOT NULL,
  "Klient_ID" Integer NOT NULL
)
/

-- Create indexes for table Rezerwacje

CREATE INDEX "IX_Klient dokonuje rezerwacji" ON "Rezerwacje" ("Klient_ID")
/

-- Add keys for table Rezerwacje

ALTER TABLE "Rezerwacje" ADD CONSTRAINT "Rezerwacja_PK" PRIMARY KEY ("Rezerwacja_ID")
/

-- Table Wizyty

CREATE TABLE "Wizyty"(
  "Wizyta_ID" Integer NOT NULL,
  "Data_wizyty" Date NOT NULL,
  "Czy zrealizowana" Char(1 ) NOT NULL,
  "Opis" Varchar2(500 ),
  "Rezerwacja_ID" Integer NOT NULL,
  "Warsztat_ID" Integer NOT NULL,
  "Samochod_ID" Integer NOT NULL
)
/

-- Create indexes for table Wizyty

CREATE INDEX "IX_Wizyta jest rezerwowana" ON "Wizyty" ("Rezerwacja_ID")
/

CREATE INDEX "IX_Warsztat rezlizuje wizyty" ON "Wizyty" ("Warsztat_ID")
/

CREATE INDEX "IX_Wizyta_realizowana_na" ON "Wizyty" ("Samochod_ID")
/

-- Add keys for table Wizyty

ALTER TABLE "Wizyty" ADD CONSTRAINT "Wizyta_PK" PRIMARY KEY ("Wizyta_ID")
/

-- Table Czesci

CREATE TABLE "Czesci"(
  "Czesc_ID" Integer NOT NULL,
  "Nazwa" Varchar2(30 ) NOT NULL,
  "Cena" Number(10,2) NOT NULL
)
/

-- Add keys for table Czesci

ALTER TABLE "Czesci" ADD CONSTRAINT "Czesc_PK" PRIMARY KEY ("Czesc_ID")
/

-- Table Naprawy

CREATE TABLE "Naprawy"(
  "Naprawa_ID" Integer NOT NULL,
  "Rodzaj_naprawy" Varchar2(30 ) NOT NULL,
  "Koszt_uslugi" Number(10,2) NOT NULL
)
/

-- Add keys for table Naprawy

ALTER TABLE "Naprawy" ADD CONSTRAINT "Naprawa_PK" PRIMARY KEY ("Naprawa_ID")
/

-- Table Rejestry klientow

CREATE TABLE "Rejestry klientow"(
  "Warsztat_ID" Integer NOT NULL,
  "Klient_ID" Integer NOT NULL
)
/

-- Table Rejestry napraw

CREATE TABLE "Rejestry napraw"(
  "Wizyta_ID" Integer NOT NULL,
  "Naprawa_ID" Integer NOT NULL
)
/


-- Table Obsluga wizyt

CREATE TABLE "Obsluga wizyt"(
  "Pracownik_ID" Integer NOT NULL,
  "Wizyta_ID" Integer NOT NULL
)
/

-- Table Stanowiska

CREATE TABLE "Stanowiska"(
  "Stanowisko_ID" Integer NOT NULL,
  "Nazwa stanowiska" Varchar2(30 ) NOT NULL,
  "Opis" Char(100 )
)
/

-- Add keys for table Stanowiska

ALTER TABLE "Stanowiska" ADD CONSTRAINT "Stanowisko_PK" PRIMARY KEY ("Stanowisko_ID")
/

-- Table Wynagrodzenia

CREATE TABLE "Wynagrodzenia"(
  "Wynagrodzenie_ID" Integer NOT NULL,
  "Data" Date NOT NULL,
  "Kwota podstawowa" Number(7,2) NOT NULL,
  "Kwota dodatkowa" Number(7,2),
  "Pracownik_ID" Integer NOT NULL
)
/

-- Create indexes for table Wynagrodzenia

CREATE INDEX "IX_Wynagrodzenie_pracownika" ON "Wynagrodzenia" ("Pracownik_ID")
/

-- Add keys for table Wynagrodzenia

ALTER TABLE "Wynagrodzenia" ADD CONSTRAINT "Wynagrodzenie_PK" PRIMARY KEY ("Wynagrodzenie_ID")
/

-- Table Adresy

CREATE TABLE "Adresy"(
  "Adres_ID" Integer NOT NULL,
  "Ulica" Varchar2(30 ) NOT NULL,
  "Numer" Varchar2(6 ) NOT NULL,
  "Miejscowosc" Varchar2(30 ) NOT NULL
)
/

-- Add keys for table Adresy

ALTER TABLE "Adresy" ADD CONSTRAINT "Adres_PK" PRIMARY KEY ("Adres_ID")
/

-- Table Wlasciciele

CREATE TABLE "Wlasciciele"(
  "Wlasciciel_ID" Integer NOT NULL,
  "Imie" Varchar2(30 ) NOT NULL,
  "Nazwisko" Varchar2(30 ) NOT NULL,
  "Pesel" Char(11 ) NOT NULL,
  "Serwis_ID" Integer NOT NULL
)
/

-- Create indexes for table Wlasciciele

CREATE INDEX "IX_Wlasciciel_zarzadza" ON "Wlasciciele" ("Serwis_ID")
/

-- Add keys for table Wlasciciele

ALTER TABLE "Wlasciciele" ADD CONSTRAINT "Wlasciciel_PK" PRIMARY KEY ("Wlasciciel_ID")
/

ALTER TABLE "Wlasciciele" ADD CONSTRAINT "Pesel_AK" UNIQUE ("Pesel")
/

-- Table Rejestry czesci

CREATE TABLE "Rejestry czesci"(
  "Wizyta_ID" Integer NOT NULL,
  "Czesc_ID" Integer NOT NULL
)
/

 CREATE INDEX "IX_Wizyta_odbywajaca_sie" ON "Wizyty" ("Data")
/

CREATE INDEX "IX_Klient_o_nazwisku" ON "Klienci" ("Nazwisko") 
/
-- Create foreign keys (relationships) section ------------------------------------------------- 

ALTER TABLE "Pracownicy" ADD CONSTRAINT "Serwis zatrudnia" FOREIGN KEY ("Serwis_ID") REFERENCES "Serwisy" ("Serwis_ID")
/


ALTER TABLE "Warsztaty" ADD CONSTRAINT "Serwis zarzadza" FOREIGN KEY ("Serwis_ID") REFERENCES "Serwisy" ("Serwis_ID")
/


ALTER TABLE "Pracownicy" ADD CONSTRAINT "Warsztat posiada pracownikow" FOREIGN KEY ("Warsztat_ID") REFERENCES "Warsztaty" ("Warsztat_ID")
/


ALTER TABLE "Samochody" ADD CONSTRAINT "Klient posiada samochod" FOREIGN KEY ("Klient_ID") REFERENCES "Klienci" ("Klient_ID")
/


ALTER TABLE "Rezerwacje" ADD CONSTRAINT "Klient dokonuje rezerwacji" FOREIGN KEY ("Klient_ID") REFERENCES "Klienci" ("Klient_ID")
/


ALTER TABLE "Wizyty" ADD CONSTRAINT "Wizyta jest rezerwowana" FOREIGN KEY ("Rezerwacja_ID") REFERENCES "Rezerwacje" ("Rezerwacja_ID")
/


ALTER TABLE "Wizyty" ADD CONSTRAINT "Warsztat rezlizuje wizyty" FOREIGN KEY ("Warsztat_ID") REFERENCES "Warsztaty" ("Warsztat_ID")
/


ALTER TABLE "Pracownicy" ADD CONSTRAINT "Pracownik ma stanowisko" FOREIGN KEY ("Stanowisko ID") REFERENCES "Stanowiska" ("Stanowisko_ID")
/


ALTER TABLE "Wynagrodzenia" ADD CONSTRAINT "Pracownik dostaje" FOREIGN KEY ("Pracownik_ID") REFERENCES "Pracownicy" ("Pracownik_ID")
/


ALTER TABLE "Serwisy" ADD CONSTRAINT "Serwis ma adres" FOREIGN KEY ("Adres_ID") REFERENCES "Adresy" ("Adres_ID")
/


ALTER TABLE "Warsztaty" ADD CONSTRAINT "Warsztat ma adres" FOREIGN KEY ("Adres ID") REFERENCES "Adresy" ("Adres_ID")
/


ALTER TABLE "Pracownicy" ADD CONSTRAINT "Pracownik ma adres" FOREIGN KEY ("Adres ID") REFERENCES "Adresy" ("Adres_ID")
/


ALTER TABLE "Wlasciciele" ADD CONSTRAINT "Biuro ma wlascicieli" FOREIGN KEY ("Serwis_ID") REFERENCES "Serwisy" ("Serwis_ID")
/


ALTER TABLE "Wizyty" ADD CONSTRAINT "Wizyta dotyczy" FOREIGN KEY ("Samochod_ID") REFERENCES "Samochody" ("Samochod_ID")
/





