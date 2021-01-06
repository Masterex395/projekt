CREATE VIEW kwerenda_1 AS
SELECT count(*) AS Ilość_pacjentów FROM Pacjent;

CREATE VIEW kwerenda_2 AS
SELECT * FROM pacjent
WHERE Miejsce_zamieszkania="Olsztyn";

CREATE VIEW kwerenda_3 AS
SELECT lekarz.Nazwisko, lekarz.Imie, lekarz.Specjalizacja, count(pacjent.Lekarz_prowadzacy) AS pacjenci_lekarza FROM lekarz
INNER JOIN pacjent ON lekarz.id_lekarz=pacjent.Lekarz_prowadzacy
GROUP BY lekarz.Nazwisko
ORDER BY pacjenci_lekarza DESC;

CREATE VIEW kwerenda_4 AS
SELECT pacjent.Imie, pacjent.Nazwisko, pobyt.data_wypisu FROM pacjent
RIGHT OUTER JOIN pobyt ON pacjent.id_pacjenta=pobyt.id_pacjenta;

CREATE VIEW kwerenda_5 AS
SELECT pacjent.Nazwisko AS Nazwisko_pacjenta, pobyt.Data_przyjecia, pobyt.Data_wypisu, SUM((pobyt.data_wypisu)-(pobyt.data_przyjecia)) AS Dni_w_szpitalu FROM pobyt
INNER JOIN pacjent ON pobyt.id_pacjenta=pacjent.id_pacjenta
GROUP BY id_pobytu;

CREATE VIEW kwerenda_6 AS
SELECT Imie, Nazwisko, Specjalizacja, Miejsce_zamieszkania FROM lekarz
WHERE id_lekarz=
(SELECT MIN(id_lekarz) FROM lekarz
)
GROUP BY id_lekarz;

CREATE VIEW kwerenda_7 AS
SELECT leczenie.Zabiegi, oddzial.Nazwa_oddzialu FROM Leczenie
INNER JOIN oddzial ON leczenie.lekarz_prowadzacy=oddzial.id_oddzial
ORDER BY Zabiegi;

CREATE VIEW kwerenda_8 AS
SELECT lekarz.Imie, lekarz.Nazwisko, lekarz.Specjalizacja, oddzial.Nazwa_oddzialu FROM lekarz
INNER JOIN oddzial ON lekarz.id_oddzial=oddzial.id_oddzial
ORDER BY lekarz.Nazwisko;

CREATE VIEW kwerenda_9 AS
SELECT Pacjent.Nazwisko AS Nazwisko_pacjenta, Pacjent.Imie AS Imię_pacjenta, Lekarz.Nazwisko AS Nazwisko_lekarza_prowadzącego, Oddzial.Nazwa_oddzialu AS Nazwa_oddziału 
FROM Oddzial INNER JOIN (Lekarz INNER JOIN Pacjent ON Lekarz.id_lekarz = Pacjent.Lekarz_prowadzacy) ON (Oddzial.id_oddzial = Pacjent.id_oddzialu) 
AND (Oddzial.id_oddzial = Lekarz.Id_oddzial)
ORDER BY Pacjent.Nazwisko;

CREATE VIEW kwerenda_10 AS
SELECT Pacjent.Nazwisko, Pacjent.Imie, Pacjent.Data_urodzenia, Pobyt.Rozpoznanie_choroby, Leczenie.Leki, Leczenie.Zabiegi, Leczenie.Zalecenia, Leczenie.Przeciwskazania
FROM (Leczenie INNER JOIN Pacjent ON Leczenie.id_leczenia = Pacjent.id_leczenia) INNER JOIN Pobyt ON Pacjent.id_pacjenta = Pobyt.id_pacjenta
GROUP BY Pacjent.Nazwisko
ORDER BY Pacjent.Nazwisko;

-- Kwerenda 1 - Zlicza ilość pacjentów.
-- Kwerenda 2 - Wypisuje wszystkich pacjentów, którzy mieszkają w Olsztynie.
-- Kwerenda 3 - Wypisuje ilość pasjentów każdego lekarza.
-- Kwerenda 4 - Pokazuje jaki pacjent i kiedy opuścił szpital.
-- Kwerenda 5 - Zlicza ile dni pacjent był w szpitalu.
-- Kwerenda 6 - Wypisuje pierwszego lekarza z tabeli lekarz.
-- Kwerenda 7 - Jakie zabiegi były robiona na danym oddziale.
-- Kwerenda 8 - Wypisuje specjalność lekarza i przynależność do oddziału.
-- Kwerenda 9 - Wypisuje jacy pacjeci są na oddziałach.
-- Kwerenda 10 - Historia leczenia pacjenta.