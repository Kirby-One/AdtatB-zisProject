-- 1. Adatbázis létrehozása (ha még nem létezik)
CREATE DATABASE IF NOT EXISTS KonyvesboltDB;
USE KonyvesboltDB;

-- 2. Tábla létrehozása
CREATE TABLE IF NOT EXISTS Konyvek (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cim VARCHAR(255) NOT NULL,
    szerzo VARCHAR(255) NOT NULL,
    kiadasi_ev INT,
    ar INT,
    keszleten BOOLEAN DEFAULT TRUE
);

-- 3. Adatok beszúrása
INSERT INTO Konyvek (cim, szerzo, kiadasi_ev, ar, keszleten) VALUES
('Az Egri Csillagok', 'Gárdonyi Géza', 1899, 3500, 1),
('A Pál utcai fiúk', 'Molnár Ferenc', 1907, 2800, 1),
('1984', 'George Orwell', 1949, 4200, 1),
('A kis herceg', 'Antoine de Saint-Exupéry', 1943, 2200, 0);

-- Ellenőrizzük, hogy az adatok bekerültek-e, és rendezzük ár szerint
SELECT 
    id AS 'Azonosító', 
    cim AS 'Cím', 
    szerzo AS 'Szerző', 
    ar AS 'Ár (Ft)'
FROM Konyvek
WHERE keszleten = 1
ORDER BY ar DESC;