INSERT INTO oddzial(Nazwa_oddzialu) VALUES
('Chirurgia'),('Ginekologia'),('Ortopedia'),('Neurologia'),('Kardiologia'),
('Pediatria'),('Rehabilitacja'),('Gastrologia'),('Zakaźny'),('Ortodonta');


INSERT INTO lekarz(Imie, Nazwisko, Data_urodzenia, Specjalizacja, Miejsce_zamieszkania, Numer_telefonu, id_oddzial) VALUES
('Łukasz','Wyrostek','1975-05-09','Chirurg','Olsztyn','798456245','1'),
('Karolina','Mostek','1989-08-16','Ginekolog','Bartąg','505694254','2'),
('Krzysztof','Pajęczak','1972-10-19','Ortopeda','Gdańsk','598145632','3'),
('Monika','Warner','1962-04-01','Neurolog','Olsztyn','504625921','4'),
('Hubert','Grosiak','1974-12-29','Kardiolog','Oręta','625489545','5'),
('Irena','Wojtkowiak','1980-05-06','Pediatra','Olsztyn','784210059','6'),
('Marek','Wojtkowiak','1979-06-19','Pediatra','Olsztyn','754861509','6'),
('Marian','Paździoch','1992-01-31','Rehabilitant','Warszawa','659871523','7'),
('Jakub','Pazera','1972-12-14','Chirurg','Białystok','785452169','1'),
('Hans','Apritz','1994-01-01','Gastrolog','Gdańsk','354987054','8'),
('Jakub','Karno','1955-10-10','Wirusolog','Białystok','652748001','9'),
('Patrycja','Sobotka','1980-02-15','Ortodonta','Warszawa','705420997','10');


INSERT INTO leczenie(Leki, Zabiegi, Zalecenia, Przeciwskazania, Lekarz_prowadzacy) VALUES
('Znieczulenie miejscowe','Zakładanie szwów','Zdjęcie szwów','Nadmierny wysiłek fizyczny','1'),
('Nitrogliceryna','Badanie EKG','Spokojny spacer','Wysiłek fizyczny','5'),
('Paracetamol','Założenie gipsu na lewej ręce','Zdjęcie gipsu','Nadmierny wysiłek fizyczny','3'),
('Doumox','Brak','Zażywanie antybiotyku','Brak','6'),
('Alax','Gastroskopia','Zdrowa dieta','Brak','10'),
('Morfina','Zakładanie szwów','Zdjęcie szwów','Przemęczanie ręki','9'),
('Brak','Rehabilitacja','Ćwiczenia rehabilitacyjne','Brak','8'),
('Hypnogen','Brak','Zażywanie leków','Nadmierny wysiłek fizyczny','4'),
('Elektrolity','Poród naturalny','Oszczędzanie organizmu','Wysiłek fizyczny','2'),
('Paracetamol','Badanie RTG','Oszczędzanie organizmu','Wysiłek fizyczny','3');


INSERT INTO pacjent(Imie, Nazwisko, Data_urodzenia, Miejsce_urodzenia, Miejsce_zamieszkania, Ulica, Numer_domu, Numer_telefonu, Lekarz_prowadzacy, id_leczenia, id_oddzialu) VALUES
('Katarzyna','Tyrek','2000-12-20','Olsztyn','Olsztyn','Jarocka','70/12','545636007','1','1','1'),
('Helena','Mostowiak','1946-05-10','Ełk','Olsztyn','Chopina','2/2','750045696','5','2','5'),
('Marlena','Urbańska','1978-01-14','Gdańsk','Orzysz','Suwalska','5','865014000','3','3','3'),
('Tomasz','Rak','2002-08-04','Elbląg','Olsztyn','Wyszyńskiego','5/1','565000132','6','4','6'),
('Jan','Panicz','1965-10-29','Olecko','Suwałki','Szkolna','10','605405002','10','5','8'),
('Marcin','Konopka','2000-09-18','Warszawa','Warszawa','Mickiewicza','50/101','500001231','9','6','1'),
('Karolina','Waśkowiak','1991-05-01','Olsztyn','Poznań','Długa','1/4','656001456','8','7','7'),
('Helena','Marikowska','1962-11-14','Działdowo','Działdowo','Chopina','15','700997534','4','8','4'),
('Klaudia','Moryka','2001-03-08','Zielona Góra','Toruń','Prosta','12/14','505789456','2','9','2'),
('Jan','Kosowski','1997-04-30','Bydgoszcz','Olsztyn','Utrata','92','507599650','3','10','3');


INSERT INTO Pobyt(Data_przyjecia, Data_wypisu, Rozpoznanie_choroby, id_pacjenta, id_oddzialu) VALUES
('2020-03-13','2020-03-14','Szkło w łydce','1','1'),
('2020-04-02','2020-04-08','Podejrzenie zawału','5','2'),
('2020-04-08','2020-04-09','Złamanie lewego piszczela','3','3'),
('2020-04-09','2020-04-09','Kaszel i gorączka','6','4'),
('2020-02-02','2020-02-10','Bóle brzucha','8','5'),
('2020-03-30','2020-03-30','Noż w ramieniu','1','6'),
('2020-04-10','2020-04-10','Poprawa chodzenia','7','7'),
('2020-03-12','2020-04-08','Problemy ze snem','4','8'),
('2020-03-24','2020-04-01','Poród naturalny','2','9'),
('2020-04-02','2020-04-03','Naderwanie stawu skokowego','3','10');