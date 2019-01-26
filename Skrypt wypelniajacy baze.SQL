
INSERT INTO  "Adresy" VALUES (1, 'Plocka', '15', 'Warszawa'); 
INSERT INTO  "Adresy" VALUES (2, 'Polna', '7', 'Warszawa'); 
INSERT INTO  "Adresy" VALUES (3, 'Wolska', '5' , 'Wroclaw');
INSERT INTO  "Adresy" VALUES (4, 'Warynskiego', '12', 'Warszawa');
INSERT INTO  "Adresy" VALUES (5, 'Piekna', '60A', 'Wroc³aw');
INSERT INTO  "Adresy" VALUES (6, 'Marszalkowska', '78B', 'Warszawa');
INSERT INTO  "Adresy" VALUES (7, 'Warynskiego', '12', 'Warszawa');
INSERT INTO  "Adresy" VALUES (8, 'Obozowa', '81', 'Warszawa');
INSERT INTO  "Adresy" VALUES (9, 'Wiejska', '14', 'Wroclaw');
INSERT INTO  "Adresy" VALUES (10, 'Sosnowa', '03', 'Wroclaw');
INSERT INTO  "Adresy" VALUES (11, 'Koscielna', '07', 'Wroclaw');
INSERT INTO  "Adresy" VALUES (12, 'Koscielna', '10', 'Wroclaw');
INSERT INTO  "Adresy" VALUES (13, 'Koscielna', '15', 'Wroclaw');

INSERT INTO "Serwisy" VALUES (1, 'AUTO-SERWIS', '2001-09-28', 1234567890, 705689652, 1);

INSERT INTO "Warsztaty" VALUES (1, 'AUTOVIWA', '2002-10-12',NULL,NULL, 1, 2);
INSERT INTO "Warsztaty" VALUES (2, 'MOTOPARK', '2008-05-15',NULL,NULL, 1, 3); 

INSERT INTO "Wlasciciele" VALUES (1, 'Janusz', 'Korwin', 25083502137, 1);

INSERT INTO "Klienci" VALUES (1, 'Krystian', 'Boczek', 691987205, NULL);
INSERT INTO "Klienci" VALUES (2, 'Wojciech', 'Cejrofski', 691957205, NULL);
INSERT INTO "Klienci" VALUES (3, 'Alicja', 'Policja', 691956205, NULL);
INSERT INTO "Klienci" VALUES (4, 'Brajan', 'Czerep', 691987555, NULL);
INSERT INTO "Klienci" VALUES (5, 'Jessica', 'Abba', 692987205, NULL);
INSERT INTO "Klienci" VALUES (6, 'Gra¿yna', 'Smuteczek', 291987205, NULL);
INSERT INTO "Klienci" VALUES (7, 'Tadeusz', 'Wajcha', 391987205, NULL);
INSERT INTO "Klienci" VALUES (8, 'Zygfryd', 'Jaki', 591987205, NULL);

INSERT INTO "Stanowiska" VALUES(1, 'Administrator', 'Administrator bazy danych');
INSERT INTO "Stanowiska" VALUES(2, 'Ksiegowy', 'Ksiegowy');
INSERT INTO "Stanowiska" VALUES(3, 'Kierownik', 'Kierownik Warsztatu');
INSERT INTO "Stanowiska" VALUES(4, 'Mechanik', 'Naprawa aut');
INSERT INTO "Stanowiska" VALUES(5, 'Pomocnik', 'Pomocnik przy naprawach');

INSERT INTO "Pracownicy" VALUES (1, 'Jan', 'Taki', 45505004919, '1992-10-12', 'admin@krol.pl', 198741254, '2012-12-12',1,NULL,1,4);
INSERT INTO "Pracownicy" VALUES (2, 'Sebastian', 'Nowak', 45505500919, '1992-10-12', 'jan@sebs.pl', 298741254, '2012-12-12',1,1,3,5);
INSERT INTO "Pracownicy" VALUES (3, 'Janusz', 'Golec', 4550506919, '1992-10-12', 'jan@sebs.pl', 398741254, '2012-12-12',1,1,4,6);
INSERT INTO "Pracownicy" VALUES (4, 'Tadeusz', 'Bolec', 45505880919, '1992-10-12', 'jan@sebs.pl', 498741254, '2012-12-12',1,1,4,7);
INSERT INTO "Pracownicy" VALUES (5, 'Szymon', 'Psikuta', 45505080919, '1992-10-12', 'jan@sebs.pl', 598741254, '2012-12-12',1,2,3,8);
INSERT INTO "Pracownicy" VALUES (6, 'John', 'Smith', 45505007919, '1992-10-12', 'jan@sebs.pl', 698741254, '2012-12-12',1,2,4,9);
INSERT INTO "Pracownicy" VALUES (7, 'Krystyna', 'Czubuwna', 45205000919, '1992-10-12', 'jan@sebs.pl', 798741254, '2012-12-12',1,2,1,10);
INSERT INTO "Pracownicy" VALUES (8, 'Anna', 'Wanna', 45505000599, '1992-10-12', 'jan@sebs.pl', 898741254, '2012-12-12',1,NULL,2,11);
INSERT INTO "Pracownicy" VALUES (9, 'Marian', 'Dziendziel', 45504000919, '1992-10-12', 'jan@sebs.pl', 998741254, '2012-12-12',1,1,5,12);
INSERT INTO "Pracownicy" VALUES (10, 'Witold', 'Orosz', 45505000511, '1992-10-12', 'jan@sebs.pl', 108744254, '2012-12-12',1,2,4,13);



INSERT INTO "Samochody" VALUES (1,'Opel','Corsa', 'WX4543', '33FG2R123423534626', NULL, 1);
INSERT INTO "Samochody" VALUES (2,'BMW','X5M', 'WG6554', 'R487RY483RH43R43R', NULL, 2);
INSERT INTO "Samochody" VALUES (3,'LOTUS','EXIGE', 'WI25689', 'SDAKJFNA48404F4F4J', NULL, 3);
INSERT INTO "Samochody" VALUES (4,'Fiat','Panda', 'WGC6554', '1832DHNI3DN2UDN3E3', NULL, 4);
INSERT INTO "Samochody" VALUES (5,'Opel','Astra', 'WPN2137', '2832DHNI3DN2UDN3E3', NULL, 5);
INSERT INTO "Samochody" VALUES (6,'BMW','E36', 'CNG6789', '3832DHNI3DN32UN3E3', NULL, 5);
INSERT INTO "Samochody" VALUES (7,'Ford','Mustang', 'PJ45WG6', '4832DHNI3D32UDN3E3', NULL, 6);
INSERT INTO "Samochody" VALUES (8,'Lancia','Delta', 'WSIHW34', '5832DHNI3D32UDN3E3', NULL, 7);
INSERT INTO "Samochody" VALUES (9,'Audi','80', 'W0LUXUS', '6832DHNI3DN32UN3E3', NULL, 8);
INSERT INTO "Samochody" VALUES (10,'ARRINERA','HUSSARYA', 'P0SSIJ', '7832DHNIDN32UDN3E3', NULL, 8);

INSERT INTO "Czesci" VALUES (1,'kolo_pasowe','34,0');
INSERT INTO "Czesci" VALUES (2,'m','5');
INSERT INTO "Czesci" VALUES (3,'p','8');
INSERT INTO "Czesci" VALUES (4,'k','27');

INSERT INTO "Naprawy" VALUES (1,'wymiana kola','34,0');
INSERT INTO "Naprawy" VALUES (2,'a','5');
INSERT INTO "Naprawy" VALUES (3,'b','6');
INSERT INTO "Naprawy" VALUES (4,'c','7');



INSERT INTO "Rezerwacje" VALUES (1,'2017-11-01',1);
INSERT INTO "Rezerwacje" VALUES (2,'2017-12-01',1);
INSERT INTO "Rezerwacje" VALUES (3,'2017-3-21',3);
INSERT INTO "Rezerwacje" VALUES (4,'2017-2-01',4);
INSERT INTO "Rezerwacje" VALUES (5,'2017-1-01',5);
INSERT INTO "Rezerwacje" VALUES (6,'2017-7-01',6);
INSERT INTO "Rezerwacje" VALUES (7,'2017-9-01',7);

INSERT INTO "Wizyty" VALUES (1,'2017-12-01', 0, NULL, 1, 1, 1);
INSERT INTO "Wizyty" VALUES (2,'2017-2-01', 0, NULL, 2, 2, 2);
INSERT INTO "Wizyty" VALUES (3,'2017-5-01', 0, NULL, 3, 1, 3);
INSERT INTO "Wizyty" VALUES (4,'2017-7-01', 1, NULL, 4, 2, 4);
INSERT INTO "Wizyty" VALUES (5,'2017-9-01', 0, NULL, 5, 1, 5);






INSERT INTO "Rejestry klientow" VALUES (1,1);
INSERT INTO "Rejestry klientow" VALUES (1,2);
INSERT INTO "Rejestry klientow" VALUES (2,1);
INSERT INTO "Rejestry klientow"  VALUES (3,2);
INSERT INTO "Rejestry klientow" VALUES (4,2);
INSERT INTO "Rejestry klientow" VALUES (6,1);
INSERT INTO "Rejestry klientow" VALUES (7,1);

INSERT INTO "Rejestry napraw" VALUES (1,1);
INSERT INTO "Rejestry napraw" VALUES (1,3);
INSERT INTO "Rejestry napraw" VALUES (2,1);
INSERT INTO "Rejestry napraw" VALUES (3,4);
INSERT INTO "Rejestry napraw" VALUES (4,2);


INSERT INTO "Rejestry czesci" VALUES (1,1);
INSERT INTO "Rejestry czesci" VALUES (1,2);
INSERT INTO "Rejestry czesci" VALUES (1,3);
INSERT INTO "Rejestry czesci" VALUES (3,1);
INSERT INTO "Rejestry czesci" VALUES (4,2); 

INSERT INTO "Obsluga wizyt" VALUES (3,1);
INSERT INTO "Obsluga wizyt" VALUES (10,1);
INSERT INTO "Obsluga wizyt" VALUES (8,5);
INSERT INTO "Obsluga wizyt" VALUES (6,4);
INSERT INTO "Obsluga wizyt" VALUES (5,3);


INSERT INTO "Wynagrodzenia" VALUES (1, '2017-11-01', '10000,0', NULL, 1);
INSERT INTO "Wynagrodzenia" VALUES (2, '2017-11-01', '10000,0', NULL, 1);
INSERT INTO "Wynagrodzenia" VALUES (3, '2017-12-01', '10000,0', NULL, 1);
INSERT INTO "Wynagrodzenia" VALUES (4, '2017-01-01', '10000,0', NULL, 1);
INSERT INTO "Wynagrodzenia" VALUES (5, '2016-11-01', '7000,0', NULL, 2);
INSERT INTO "Wynagrodzenia" VALUES (6, '2016-12-01', '7000,0', NULL, 2);
INSERT INTO "Wynagrodzenia" VALUES (7, '2017-01-01', '7000,0', '400,0', 2); 
INSERT INTO "Wynagrodzenia" VALUES (8, '2017-10-01', '12000,0', NULL, 3);
INSERT INTO "Wynagrodzenia" VALUES (9, '2017-11-01', '12000,0', NULL, 3);
INSERT INTO "Wynagrodzenia" VALUES (10, '2017-12-01', '12000,0', NULL, 3);
INSERT INTO "Wynagrodzenia" VALUES (11, '2017-11-01', '2000,0', NULL, 4);
INSERT INTO "Wynagrodzenia" VALUES (12, '2017-12-01', '2000,0', NULL,4);
INSERT INTO "Wynagrodzenia" VALUES (13, '2018-01-01', '2000,0', '100,0', 4);
INSERT INTO "Wynagrodzenia" VALUES (14, '2017-11-01', '6000,0', NULL, 5);
INSERT INTO "Wynagrodzenia" VALUES (15, '2017-12-01', '6000,0', NULL,5);
INSERT INTO "Wynagrodzenia" VALUES (16, '2018-01-01', '6000,0', NULL, 5);
INSERT INTO "Wynagrodzenia" VALUES (17, '2018-07-01', '11000,0', NULL, 10);
INSERT INTO "Wynagrodzenia" VALUES (18, '2018-08-01', '11000,0', NULL,10);
INSERT INTO "Wynagrodzenia" VALUES (19, '2018-07-01', '6000,0', NULL, 7);
INSERT INTO "Wynagrodzenia" VALUES (20, '2018-08-01', '6000,0', '200,0', 7);
INSERT INTO "Wynagrodzenia" VALUES (21, '2018-07-01', '1800,0', NULL, 8);
INSERT INTO "Wynagrodzenia" VALUES (22, '2018-08-01', '1800,0', NULL,8);
























