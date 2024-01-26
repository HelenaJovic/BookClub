-- 1.Kreiranje pogleda koji koristi LEFT JOIN za povezivanje
-- tabele aktivnost sa tipaktivnosti i realizacija, 
-- u cilju prikazivanja prosečnog broja bodova po
-- tipu aktivnosti.

CREATE VIEW ProsjecniBodoviPoTipuAktivnosti AS
SELECT ta.naz_tip, AVG(r.br_bod) AS ProsjecniBodovi
FROM tipaktivnosti ta
LEFT JOIN aktivnost a ON ta.id_tip = a.tipaktivnosti_id_tip
LEFT JOIN realizacija r ON a.akt_sif = r.aktivnost_akt_sif
GROUP BY ta.naz_tip;

SELECT * FROM ProsjecniBodoviPoTipuAktivnosti
WHERE ProsjecniBodovi > 20
ORDER BY ProsjecniBodovi DESC;

-- 2.Napravite SQL pogled koji prikazuje sve aktivnosti sa više od dva učesnika. Prikupite informacije o tipu aktivnosti, 
-- broju prisutnih članova, 
-- i njihovim prosečnim bodovima. Koristite ovaj pogled za prikaz podataka o aktivnostima.
CREATE VIEW DetaljnaaaaAnalizaAktivnosti AS
SELECT
    ta.id_tip,
    ta.naz_tip,
    ta.opis AS TipAktivnostiOpis,
    r.real_sif,
    r.dat_poc,
    r.dat_traj,
    r.br_bod,
    r.komentar,
    COUNT(u.clan_cl_sif) AS BrojPrisutnihClanova,
    AVG(c.br_uk_bod) AS ProsečanBrojBodovaClanova
FROM 
    tipaktivnosti ta
    JOIN aktivnost a ON ta.id_tip = a.tipaktivnosti_id_tip
    JOIN realizacija r ON a.tipaktivnosti_id_tip = r.aktivnost_tipaktivnosti_id_tip
    LEFT JOIN ucestvuje u ON r.real_sif = u.realizacija_real_sif
    LEFT JOIN clan c ON u.clan_cl_sif = c.cl_sif
GROUP BY 
    ta.id_tip, 
    r.real_sif;
SELECT * FROM DetaljnaaaaAnalizaAktivnosti
where BrojPrisutnihClanova>2 ;




-- 3.Napravite i analizirajte izveštaj o izdavanju knjiga od strane bibliotekara. Kreirajte pogled AnalizaIzdavanjaKnjiga 
-- koji sadrži ime i prezime svakog bibliotekara, broj knjiga koje su izdali i datum njihovog poslednjeg izdavanja. 
-- Zatim, koristite ovaj pogled da pronađete i prikažete sve bibliotekare koji su izdali više od jedne knjige.


CREATE VIEW AnalizaIzdavanjaKnjiga AS
SELECT
    b.ime,
    b.prz,
    COUNT(i.knjiga_sc_knj) AS BrojIzdatihKnjiga,
    MAX(i.dat_izd) AS PoslednjeIzdavanje
FROM 
    zaposleni b
    JOIN izdavanje i ON b.zap_sif = i.bibliotekar_zap_sif
    JOIN knjiga k ON i.knjiga_sc_knj = k.sc_knj
WHERE 
    b.zan = 'Bibliotekar'
GROUP BY 
    b.ime, b.prz
ORDER BY 
    BrojIzdatihKnjiga DESC, PoslednjeIzdavanje DESC;
SELECT *
FROM AnalizaIzdavanjaKnjiga
WHERE BrojIzdatihKnjiga > 1;


   