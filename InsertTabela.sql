INSERT INTO tipaktivnosti (id_tip, naz_tip, opis) VALUES (1, 'Čitanje', 'Događaj posvećen čitanju.');
INSERT INTO tipaktivnosti (id_tip, naz_tip, opis) VALUES (2, 'Razmena', 'Događaj za razmenu.');
INSERT INTO tipaktivnosti (id_tip, naz_tip, opis) VALUES (3, 'Autorsko veče', 'Veče sa autorom.');
INSERT INTO tipaktivnosti (id_tip, naz_tip, opis) VALUES (4, 'Radionica', 'Radionica pisanja.');
INSERT INTO tipaktivnosti (id_tip, naz_tip, opis) VALUES (5, 'Predstavljanje', 'Predstavljanje knjige.');


INSERT INTO aktivnost (akt_sif,tipaktivnosti_id_tip) VALUES (1,2);
INSERT INTO aktivnost (akt_sif,tipaktivnosti_id_tip) VALUES (2,1);
INSERT INTO aktivnost (akt_sif,tipaktivnosti_id_tip) VALUES (3,5);
INSERT INTO aktivnost (akt_sif,tipaktivnosti_id_tip) VALUES (4,3);
INSERT INTO aktivnost (akt_sif,tipaktivnosti_id_tip) VALUES (5,4);

INSERT INTO zaposleni (zap_sif, zan, ime, prz) VALUES (3159, 'Bibliotekar', 'Ivan', 'Jovanović');
INSERT INTO zaposleni (zap_sif, zan, ime, prz) VALUES (4366, 'Izlagac', 'Ivan', 'Nikolić');
INSERT INTO zaposleni (zap_sif, zan, ime, prz) VALUES (1881, 'Izlagac', 'Ana', 'Jovanović');
INSERT INTO zaposleni (zap_sif, zan, ime, prz) VALUES (8921, 'Bibliotekar', 'Marko', 'Petrović');
INSERT INTO zaposleni (zap_sif, zan, ime, prz) VALUES (9649, 'Izlagac', 'Jelena', 'Marković');
INSERT INTO zaposleni (zap_sif, zan, ime, prz) VALUES (3200, 'Bibliotekar', 'Janko', 'Jovanović');
INSERT INTO zaposleni (zap_sif, zan, ime, prz) VALUES (2222, 'Rukovodilac', 'Ivan', 'Simic');
INSERT INTO zaposleni (zap_sif, zan, ime, prz) VALUES (1111, 'Rukovodilac', 'Sara', 'Jovanović');
INSERT INTO zaposleni (zap_sif, zan, ime, prz) VALUES (2232, 'Bibliotekar', 'Boris', 'Zugic');
INSERT INTO zaposleni (zap_sif, zan, ime, prz) VALUES (7891, 'Izlagac', 'Helena', 'Ilic');


INSERT INTO bibliotekar(zap_sif) VALUES (2232);
INSERT INTO bibliotekar(zap_sif) VALUES (3159);
INSERT INTO bibliotekar(zap_sif) VALUES (3200);
INSERT INTO bibliotekar(zap_sif) VALUES (8921);


INSERT INTO izlagac(zap_sif) VALUES (4366);
INSERT INTO izlagac(zap_sif) VALUES (1881);
INSERT INTO izlagac(zap_sif) VALUES (9649);
INSERT INTO rukovodilac(zap_sif) VALUES (2222);
INSERT INTO rukovodilac(zap_sif) VALUES (1111);

INSERT INTO realizacija (real_sif, dat_poc, dat_traj, br_bod, komentar, aktivnost_akt_sif, aktivnost_tipaktivnosti_id_tip) VALUES (1, '2021-10-23', '2023-06-02', 26, 'Inspirativno čitanje', 1, 2);
INSERT INTO realizacija (real_sif, dat_poc, dat_traj, br_bod, komentar, aktivnost_akt_sif, aktivnost_tipaktivnosti_id_tip) VALUES (2, '2022-11-06', '2023-01-24', 27, 'Veoma produktivno', 2, 1);
INSERT INTO realizacija (real_sif, dat_poc, dat_traj, br_bod, komentar, aktivnost_akt_sif, aktivnost_tipaktivnosti_id_tip) VALUES (3, '2023-03-11', '2023-06-05', 14, 'Uspešna radionica', 3, 5);
INSERT INTO realizacija (real_sif, dat_poc, dat_traj, br_bod, komentar, aktivnost_akt_sif, aktivnost_tipaktivnosti_id_tip) VALUES (4, '2024-07-11', '2024-11-05', 25, 'Odličan događaj', 4, 3);
INSERT INTO realizacija (real_sif, dat_poc, dat_traj, br_bod, komentar, aktivnost_akt_sif, aktivnost_tipaktivnosti_id_tip) VALUES (5, '2021-02-12', '2023-06-10', 30, 'Veoma produktivno', 5, 4);

INSERT INTO knjiga (sc_knj, zanr, ime_pis, god_izd, nasl, dost) VALUES (5518, 'Naučna fantastika', 'Branko Ćopić', 1965, 'Đakon Bogorodičine crkve', 'Nedostupno');
INSERT INTO knjiga (sc_knj, zanr, ime_pis, god_izd, nasl, dost) VALUES (7592, 'Istorija', 'Isidora Sekulić', 1928, 'Na Drini ćuprija', 'Dostupno');
INSERT INTO knjiga (sc_knj, zanr, ime_pis, god_izd, nasl, dost) VALUES (3850, 'Poezija', 'Danilo Kiš', 1944, 'Na Drini ćuprija', 'Dostupno');
INSERT INTO knjiga (sc_knj, zanr, ime_pis, god_izd, nasl, dost) VALUES (8976, 'Istorija', 'Meša Selimović', 2012, 'Tvrđava', 'Nedostupno');
INSERT INTO knjiga (sc_knj, zanr, ime_pis, god_izd, nasl, dost) VALUES (9276, 'Istorija', 'Isidora Sekulić', 1914, 'Grobnica za Borisa Davidoviča', 'Nedostupno');


INSERT INTO izdavanje (dat_izd, bibliotekar_zap_sif, knjiga_sc_knj) VALUES ('2020-07-28', 2232, 5518);
INSERT INTO izdavanje (dat_izd, bibliotekar_zap_sif, knjiga_sc_knj) VALUES ('2022-09-09', 3159, 7592);
INSERT INTO izdavanje (dat_izd, bibliotekar_zap_sif, knjiga_sc_knj) VALUES ('2022-05-28', 3200, 3850);
INSERT INTO izdavanje (dat_izd, bibliotekar_zap_sif, knjiga_sc_knj) VALUES ('2020-12-07', 8921, 9276);
INSERT INTO izdavanje (dat_izd, bibliotekar_zap_sif, knjiga_sc_knj) VALUES ('2022-09-12', 3159, 7592);
INSERT INTO izdavanje (dat_izd, bibliotekar_zap_sif, knjiga_sc_knj) VALUES ('2022-06-28', 3200, 3850);
INSERT INTO izdavanje (dat_izd, bibliotekar_zap_sif, knjiga_sc_knj) VALUES ('2021-12-17', 8921, 9276);
INSERT INTO izdavanje (dat_izd, bibliotekar_zap_sif, knjiga_sc_knj) VALUES ('2021-12-18', 3200, 9276);

INSERT INTO clan (cl_sif, br_don, br_uk_bod, clan_cl_sif) VALUES (1, 14, 235, 1155);
INSERT INTO clan (cl_sif, br_don, br_uk_bod, clan_cl_sif) VALUES (2, 44, 616, 3740);
INSERT INTO clan (cl_sif, br_don, br_uk_bod, clan_cl_sif) VALUES (3, 95, 851, 2036);
INSERT INTO clan (cl_sif, br_don, br_uk_bod, clan_cl_sif) VALUES (4, 5, 426, 1040);
INSERT INTO clan (cl_sif, br_don, br_uk_bod, clan_cl_sif) VALUES (5, 4, 370, 1248);


INSERT INTO ucestvuje (realizacija_real_sif, clan_cl_sif) VALUES (1, 1);
INSERT INTO ucestvuje (realizacija_real_sif, clan_cl_sif) VALUES (2, 1);
INSERT INTO ucestvuje (realizacija_real_sif, clan_cl_sif) VALUES (5, 2);
INSERT INTO ucestvuje (realizacija_real_sif, clan_cl_sif) VALUES (4, 3);
INSERT INTO ucestvuje (realizacija_real_sif, clan_cl_sif) VALUES (5, 4);
INSERT INTO ucestvuje (realizacija_real_sif, clan_cl_sif) VALUES (1, 2);
INSERT INTO ucestvuje (realizacija_real_sif, clan_cl_sif) VALUES (2, 5);
INSERT INTO ucestvuje (realizacija_real_sif, clan_cl_sif) VALUES (3, 3);
INSERT INTO ucestvuje (realizacija_real_sif, clan_cl_sif) VALUES (4, 5);
INSERT INTO ucestvuje (realizacija_real_sif, clan_cl_sif) VALUES (4, 4);
INSERT INTO ucestvuje (realizacija_real_sif, clan_cl_sif) VALUES (5 ,1);
INSERT INTO ucestvuje (realizacija_real_sif, clan_cl_sif) VALUES (2, 2);
INSERT INTO ucestvuje (realizacija_real_sif, clan_cl_sif) VALUES (3, 2);
INSERT INTO ucestvuje (realizacija_real_sif, clan_cl_sif) VALUES (1, 3);
INSERT INTO ucestvuje (realizacija_real_sif, clan_cl_sif) VALUES (5, 5);

