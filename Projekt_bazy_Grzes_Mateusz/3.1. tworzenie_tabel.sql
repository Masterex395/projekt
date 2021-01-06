CREATE TABLE Oddzial ( 
id_oddzial INT AUTO_INCREMENT PRIMARY KEY, 
Nazwa_oddzialu VARCHAR(50) NOT NULL 
);


CREATE TABLE Lekarz
(
id_lekarz INT AUTO_INCREMENT PRIMARY KEY,
Imie VARCHAR(30) NOT NULL,
Nazwisko VARCHAR(50) NOT NULL,
Data_urodzenia DATE,
Specjalizacja VARCHAR(50) NOT NULL,
Miejsce_zamieszkania VARCHAR(50) NOT NULL,
Numer_telefonu INT,
id_oddzial INT,
FOREIGN KEY (id_oddzial) REFERENCES Oddzial(id_oddzial)
);


CREATE TABLE Leczenie ( 
id_leczenia INT AUTO_INCREMENT PRIMARY KEY,
Leki VARCHAR(100) NOT NULL,
Zabiegi VARCHAR(100) NOT NULL,
Zalecenia VARCHAR(100) NOT NULL,
Przeciwskazania VARCHAR(100) NOT NULL,
Lekarz_prowadzacy INT,
FOREIGN KEY (Lekarz_prowadzacy) REFERENCES Lekarz(id_lekarz)
);


CREATE TABLE Pacjent (
id_pacjenta INT AUTO_INCREMENT PRIMARY KEY, 
Imie VARCHAR(30) NOT NULL, 
Nazwisko VARCHAR(50) NOT NULL, 
Data_urodzenia DATE NOT NULL, 
Miejsce_urodzenia VARCHAR(100) NOT NULL, 
Miejsce_zamieszkania VARCHAR(100) NOT NULL, 
Ulica VARCHAR(100) NOT NULL, 
Numer_domu VARCHAR(10) NOT NULL, 
Numer_telefonu VARCHAR(15), 
Lekarz_prowadzacy INT, 
id_leczenia INT, 
id_oddzialu INT, 
FOREIGN KEY (Lekarz_prowadzacy) REFERENCES Lekarz(id_lekarz), 
FOREIGN KEY (id_leczenia) REFERENCES Leczenie(id_leczenia), 
FOREIGN KEY (id_oddzialu) REFERENCES Oddzial(id_oddzial)
);


CREATE TABLE Pobyt (
id_pobytu INT AUTO_INCREMENT PRIMARY KEY, 
Data_przyjecia DATE NOT NULL, 
Data_wypisu DATE NOT NULL, 
Rozpoznanie_choroby VARCHAR(1000) NOT NULL,  
id_pacjenta INT, 
id_oddzialu INT,
FOREIGN KEY (id_pacjenta) REFERENCES Pacjent(id_pacjenta), 
FOREIGN KEY (id_oddzialu) REFERENCES Oddzial(id_oddzial)
);