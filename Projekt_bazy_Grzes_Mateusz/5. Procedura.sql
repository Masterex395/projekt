CREATE PROCEDURE procedura ()
SELECT Pacjent.Nazwisko, Pacjent.Imie, Pacjent.Data_urodzenia, Pobyt.Rozpoznanie_choroby, Leczenie.Leki, Leczenie.Zabiegi, Leczenie.Zalecenia, Leczenie.Przeciwskazania
FROM (Leczenie INNER JOIN Pacjent ON Leczenie.id_leczenia = Pacjent.id_leczenia) INNER JOIN Pobyt ON Pacjent.id_pacjenta = Pobyt.id_pacjenta
GROUP BY Pacjent.Nazwisko
ORDER BY Pacjent.Nazwisko;