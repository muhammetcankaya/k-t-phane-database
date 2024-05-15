/*
Create table SALON (
salon_id number GENERATED ALWAYS AS IDENTITY PRIMARY KEY , 
salonlar varchar(10)
)
Create table IL (
il_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
il VARCHAR(30)
)
Create table ILCE (
ilce_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY ,
ilce varchar2(30),
il_id number,
CONSTRAINT fk_il_id FOREIGN KEY (il_id) REFERENCES IL(il_id)
)
Create table GAZETE_AD (
gazete_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY ,
gazete_ad varchar(50)
)
Create table TUR(
tur_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY ,
tur_ad varchar(50)
)
Create table YAZAR(
yazar_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
yazar_ad VARCHAR2(30),
yazar_soyad VARCHAR2(30),
cinsiyet varchar2(7)
);
Create table KITAP(
kitap_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
kitap_ad VARCHAR(100),
kitap_sayisi number,
salon_id number,
tur_id number,
CONSTRAINT fk_salon_id FOREIGN KEY (salon_id) REFERENCES SALON(salon_id),
CONSTRAINT fk_tur_id FOREIGN KEY (tur_id) REFERENCES TUR(tur_id)
);
CREATE TABLE DERGI (
    dergi_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY ,
    dergi_ad VARCHAR2(100),
    tur_id NUMBER,
    salon_id NUMBER,
    CONSTRAINT fk_salon_id_dergi FOREIGN KEY (salon_id) REFERENCES SALON(salon_id),
    CONSTRAINT fk_tur_id_dergi FOREIGN KEY (tur_id) REFERENCES TUR(tur_id)
);

CREATE TABLE Yazar_Kitap (
    yazar_id NUMBER,
    kitap_id NUMBER,
    PRIMARY KEY (yazar_id, kitap_id),
    FOREIGN KEY (yazar_id) REFERENCES Yazar(yazar_id),
    FOREIGN KEY (kitap_id) REFERENCES Kitap(kitap_id)
);
CREATE TABLE Yazar_Dergi (
    yazar_id NUMBER,
    dergi_id NUMBER,
    PRIMARY KEY (yazar_id, dergi_id),
    FOREIGN KEY (yazar_id) REFERENCES YAZAR(yazar_id),
    FOREIGN KEY (dergi_id) REFERENCES DERGI(dergi_id)
);

CREATE TABLE UYE (
uye_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
uye_ad VARCHAR(40),
uye_soyad VARCHAR(40),
kitap_id number,
uye_tc VARCHAR(11),
uye_tel VARCHAR(11),
il_id NUMBER,
ilce_id NUMBER,
CONSTRAINT fk_kitap_id_uye FOREIGN KEY (kitap_id) REFERENCES KITAP(kitap_id),
CONSTRAINT fk_il_id_uye FOREIGN KEY (il_id) REFERENCES IL(il_id),
CONSTRAINT fk_ilce_id_uye FOREIGN KEY (ilce_id) REFERENCES ILCE(ilce_id)
)
CREATE TABLE GAZETE(
gazet_id NUMBER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
yýllar VARCHAR2(4),
gazete_id number,
salon_id number ,
CONSTRAINT fk_gazete_id_gaz FOREIGN KEY (gazete_id) REFERENCES GAZETE_AD(gazete_id),
CONSTRAINT fk_salon_id_gaz FOREIGN KEY (salon_id) REFERENCES SALON(salon_id)
)
*/
/*
INSERT INTO SALON (salonlar) VALUES ('Salon 1');
INSERT INTO SALON (salonlar) VALUES ('Salon 2');
INSERT INTO SALON (salonlar) VALUES ('Salon 3');
INSERT INTO SALON (salonlar) VALUES ('Salon 4');
INSERT INTO SALON (salonlar) VALUES ('Salon 5');
INSERT INTO SALON (salonlar) VALUES ('Salon 6');
INSERT INTO SALON (salonlar) VALUES ('Salon 7');
INSERT INTO SALON (salonlar) VALUES ('Salon 8');
INSERT INTO SALON (salonlar) VALUES ('Salon 9');
INSERT INTO SALON (salonlar) VALUES ('Salon 10');
*/
/*
INSERT INTO IL (il) VALUES ('Istanbul');
INSERT INTO IL (il) VALUES ('Ankara');
INSERT INTO IL (il) VALUES ('Izmir');
INSERT INTO IL (il) VALUES ('Antalya');
INSERT INTO IL (il) VALUES ('Bursa');
INSERT INTO IL (il) VALUES ('Adana');
INSERT INTO IL (il) VALUES ('Trabzon');
INSERT INTO IL (il) VALUES ('Samsun');
INSERT INTO IL (il) VALUES ('Konya');
INSERT INTO IL (il) VALUES ('Gaziantep');
*/
/*
INSERT INTO ILCE (ilce, il_id) VALUES ('Kadikoy', 1);
INSERT INTO ILCE (ilce, il_id) VALUES ('Cankaya', 2);
INSERT INTO ILCE (ilce, il_id) VALUES ('Bornova', 3);
INSERT INTO ILCE (ilce, il_id) VALUES ('Muratpasa', 4);
INSERT INTO ILCE (ilce, il_id) VALUES ('Osmangazi', 5);
INSERT INTO ILCE (ilce, il_id) VALUES ('Seyhan', 6);
INSERT INTO ILCE (ilce, il_id) VALUES ('Ortahisar', 7);
INSERT INTO ILCE (ilce, il_id) VALUES ('Atakum', 8);
INSERT INTO ILCE (ilce, il_id) VALUES ('Selcuklu', 9);
INSERT INTO ILCE (ilce, il_id) VALUES ('Sehitkamil', 10);
*/
/*
INSERT INTO GAZETE_AD (gazete_ad) VALUES ('Hurriyet');
INSERT INTO GAZETE_AD (gazete_ad) VALUES ('Milliyet');
INSERT INTO GAZETE_AD (gazete_ad) VALUES ('Sabah');
INSERT INTO GAZETE_AD (gazete_ad) VALUES ('Sozcu');
INSERT INTO GAZETE_AD (gazete_ad) VALUES ('Cumhuriyet');
INSERT INTO GAZETE_AD (gazete_ad) VALUES ('Yeni Safak');
INSERT INTO GAZETE_AD (gazete_ad) VALUES ('Vatan');
INSERT INTO GAZETE_AD (gazete_ad) VALUES ('Posta');
INSERT INTO GAZETE_AD (gazete_ad) VALUES ('Zaman');
INSERT INTO GAZETE_AD (gazete_ad) VALUES ('Aksam');
select*from gazete_ad
*/
/*
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1931', 1, 1);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1932', 2, 2);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1933', 3, 3);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1934', 4, 4);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1935', 5, 5);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1936', 6, 6);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1937', 7, 7);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1938', 8, 8);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1939', 9, 9);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1940', 10, 10);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1941', 1, 1);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1942', 2, 2);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1943', 3, 3);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1944', 4, 4);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1945', 5, 5);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1946', 6, 6);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1947', 7, 7);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1948', 8, 8);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1949', 9, 9);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1950', 10, 10);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1951', 1, 1);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1952', 2, 2);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1953', 3, 3);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1954', 4, 4);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1955', 5, 5);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1956', 6, 6);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1957', 7, 7);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1958', 8, 8);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1959', 9, 9);
INSERT INTO GAZETE (yýllar, gazete_id, salon_id) VALUES ('1960', 10, 10);
select*from gazete
*/
/*
INSERT INTO TUR (tur_ad) VALUES ('Roman');
INSERT INTO TUR (tur_ad) VALUES ('Bilim Kurgu');
INSERT INTO TUR (tur_ad) VALUES ('Korku');
INSERT INTO TUR (tur_ad) VALUES ('Polisiye');
INSERT INTO TUR (tur_ad) VALUES ('Macera');
INSERT INTO TUR (tur_ad) VALUES ('Biyografi');
INSERT INTO TUR (tur_ad) VALUES ('Tarih');
INSERT INTO TUR (tur_ad) VALUES ('Mizah');
INSERT INTO TUR (tur_ad) VALUES ('Felsefe');
INSERT INTO TUR (tur_ad) VALUES ('Psikoloji');
SELECT*FROM TUR
*/
/*
INSERT INTO YAZAR (yazar_ad, yazar_soyad, cinsiyet) VALUES ('Ahmet', 'Yilmaz', 'Erkek');
INSERT INTO YAZAR (yazar_ad, yazar_soyad, cinsiyet) VALUES ('Mehmet', 'Demir', 'Erkek');
INSERT INTO YAZAR (yazar_ad, yazar_soyad, cinsiyet) VALUES ('Ayse', 'Kaya', 'Kadin');
INSERT INTO YAZAR (yazar_ad, yazar_soyad, cinsiyet) VALUES ('Fatma', 'Cetin', 'Kadin');
INSERT INTO YAZAR (yazar_ad, yazar_soyad, cinsiyet) VALUES ('Mustafa', 'Kara', 'Erkek');
INSERT INTO YAZAR (yazar_ad, yazar_soyad, cinsiyet) VALUES ('Emine', 'Ozdemir', 'Kadin');
INSERT INTO YAZAR (yazar_ad, yazar_soyad, cinsiyet) VALUES ('Ali', 'Yildiz', 'Erkek');
INSERT INTO YAZAR (yazar_ad, yazar_soyad, cinsiyet) VALUES ('Sema', 'Koc', 'Kadin');
INSERT INTO YAZAR (yazar_ad, yazar_soyad, cinsiyet) VALUES ('Cem', 'Sari', 'Erkek');
INSERT INTO YAZAR (yazar_ad, yazar_soyad, cinsiyet) VALUES ('Deniz', 'Yaman', 'Erkek');
select*from yazar
*/
/*
INSERT INTO KITAP (kitap_ad, kitap_sayýsý, salon_id, tur_id) VALUES ('Kitap 1', 5, 1, 1);
INSERT INTO KITAP (kitap_ad, kitap_sayýsý, salon_id, tur_id) VALUES ('Kitap 2', 4, 2, 2);
INSERT INTO KITAP (kitap_ad, kitap_sayýsý, salon_id, tur_id) VALUES ('Kitap 3', 3, 3, 3);
INSERT INTO KITAP (kitap_ad, kitap_sayýsý, salon_id, tur_id) VALUES ('Kitap 4', 4, 4, 4);
INSERT INTO KITAP (kitap_ad, kitap_sayýsý, salon_id, tur_id) VALUES ('Kitap 5', 3, 5, 5);
INSERT INTO KITAP (kitap_ad, kitap_sayýsý, salon_id, tur_id) VALUES ('Kitap 6', 2, 6, 6);
INSERT INTO KITAP (kitap_ad, kitap_sayýsý, salon_id, tur_id) VALUES ('Kitap 7', 2, 7, 7);
INSERT INTO KITAP (kitap_ad, kitap_sayýsý, salon_id, tur_id) VALUES ('Kitap 8', 2, 8, 8);
INSERT INTO KITAP (kitap_ad, kitap_sayýsý, salon_id, tur_id) VALUES ('Kitap 9', 3, 9, 9);
INSERT INTO KITAP (kitap_ad, kitap_sayýsý, salon_id, tur_id) VALUES ('Kitap 10', 6, 10, 10);
select*from kýtap
*/
/*
INSERT INTO DERGI (dergi_ad, tur_id, salon_id) VALUES ('Dergi 1', 1, 1);
INSERT INTO DERGI (dergi_ad, tur_id, salon_id) VALUES ('Dergi 2', 2, 2);
INSERT INTO DERGI (dergi_ad, tur_id, salon_id) VALUES ('Dergi 3', 3, 3);
INSERT INTO DERGI (dergi_ad, tur_id, salon_id) VALUES ('Dergi 4', 4, 4);
INSERT INTO DERGI (dergi_ad, tur_id, salon_id) VALUES ('Dergi 5', 5, 5);
INSERT INTO DERGI (dergi_ad, tur_id, salon_id) VALUES ('Dergi 6', 6, 6);
INSERT INTO DERGI (dergi_ad, tur_id, salon_id) VALUES ('Dergi 7', 7, 7);
INSERT INTO DERGI (dergi_ad, tur_id, salon_id) VALUES ('Dergi 8', 8, 8);
INSERT INTO DERGI (dergi_ad, tur_id, salon_id) VALUES ('Dergi 9', 9, 9);
INSERT INTO DERGI (dergi_ad, tur_id, salon_id) VALUES ('Dergi 10', 10, 10);
select*from dergi
*/
/*
INSERT INTO Yazar_Kitap (yazar_id, kitap_id) VALUES (1, 11);
INSERT INTO Yazar_Kitap (yazar_id, kitap_id) VALUES (2, 12);
INSERT INTO Yazar_Kitap (yazar_id, kitap_id) VALUES (1, 12);
INSERT INTO Yazar_Kitap (yazar_id, kitap_id) VALUES (3, 11);
INSERT INTO Yazar_Kitap (yazar_id, kitap_id) VALUES (3, 13);
INSERT INTO Yazar_Kitap (yazar_id, kitap_id) VALUES (4, 14);
INSERT INTO Yazar_Kitap (yazar_id, kitap_id) VALUES (5, 15);
INSERT INTO Yazar_Kitap (yazar_id, kitap_id) VALUES (6, 16);
INSERT INTO Yazar_Kitap (yazar_id, kitap_id) VALUES (7, 17);
INSERT INTO Yazar_Kitap (yazar_id, kitap_id) VALUES (8, 18);
INSERT INTO Yazar_Kitap (yazar_id, kitap_id) VALUES (9, 19);
INSERT INTO Yazar_Kitap (yazar_id, kitap_id) VALUES (1, 20);
select*from yazar_kitap
*/
/*
INSERT INTO Yazar_Dergi (yazar_id, dergi_id) VALUES (1, 1);
INSERT INTO Yazar_Dergi (yazar_id, dergi_id) VALUES (2, 2);
INSERT INTO Yazar_Dergi (yazar_id, dergi_id) VALUES (3, 3);
INSERT INTO Yazar_Dergi (yazar_id, dergi_id) VALUES (4, 4);
INSERT INTO Yazar_Dergi (yazar_id, dergi_id) VALUES (5, 5);
INSERT INTO Yazar_Dergi (yazar_id, dergi_id) VALUES (6, 6);
INSERT INTO Yazar_Dergi (yazar_id, dergi_id) VALUES (7, 7);
INSERT INTO Yazar_Dergi (yazar_id, dergi_id) VALUES (8, 8);
INSERT INTO Yazar_Dergi (yazar_id, dergi_id) VALUES (9, 9);
INSERT INTO Yazar_Dergi (yazar_id, dergi_id) VALUES (10, 10);
select*from dergi
*/
/*
select*from gazete;
UPDATE GAZETE SET salon_id=6 where gazet_id=5;
select*from gazete;
*/
/*
select*from Yazar_kitap;
select*from kitap;
delete Yazar_kitap where kitap_id=19;
delete KITAP WHERE kitap_id=19;
*/
/*
select*from kitap;
INSERT INTO UYE (uye_ad, uye_soyad, kitap_id, uye_tc, uye_tel, il_id, ilce_id) 
VALUES ('Ahmet', 'Kaya', 11, '45678901234', '5554567890', 4, 4);

INSERT INTO UYE (uye_ad, uye_soyad, kitap_id, uye_tc, uye_tel, il_id, ilce_id) 
VALUES ('Mehmet', 'Yýldýz', 12, '56789012345', '5555678901', 5, 5);

INSERT INTO UYE (uye_ad, uye_soyad, kitap_id, uye_tc, uye_tel, il_id, ilce_id) 
VALUES ('Ayþe', 'Kara', 12, '67890123456', '5556789012', 6, 6);

INSERT INTO UYE (uye_ad, uye_soyad, kitap_id, uye_tc, uye_tel, il_id, ilce_id) 
VALUES ('Fatma', 'Yýlmaz', 13, '78901234567', '5557890123', 7, 7);

INSERT INTO UYE (uye_ad, uye_soyad, kitap_id, uye_tc, uye_tel, il_id, ilce_id) 
VALUES ('Mustafa', 'Demir', 14, '89012345678', '5558901234', 8, 8);

INSERT INTO UYE (uye_ad, uye_soyad, kitap_id, uye_tc, uye_tel, il_id, ilce_id) 
VALUES ('Emine', 'Çelik', 15, '90123456789', '5559012345', 9, 9);

INSERT INTO UYE (uye_ad, uye_soyad, kitap_id, uye_tc, uye_tel, il_id, ilce_id) 
VALUES ('Ali', 'Aksoy', 16, '01234567890', '5550123456', 10, 10);

INSERT INTO UYE (uye_ad, uye_soyad, kitap_id, uye_tc, uye_tel, il_id, ilce_id) 
VALUES ('Sema', 'Kurt', 11, '12345678901', '5551234567', 1, 1);

INSERT INTO UYE (uye_ad, uye_soyad, kitap_id, uye_tc, uye_tel, il_id, ilce_id) 
VALUES ('Cem', 'Aslan', 17, '23456789012', '5552345678', 2, 2);

INSERT INTO UYE (uye_ad, uye_soyad, kitap_id, uye_tc, uye_tel, il_id, ilce_id) 
VALUES ('Deniz', 'Turan', 3, '34567890123', '5553456789', 3, 3);
select*from kitap;
select*from uye
*/

/*
INSERT INTO UYE (uye_ad, uye_soyad, kitap_id, uye_tc, uye_tel, il_id, ilce_id) 
VALUES ('Ahmet', 'Kaya', 4, '45678901234', '5554567890', 4, 4);

INSERT INTO UYE (uye_ad, uye_soyad, kitap_id, uye_tc, uye_tel, il_id, ilce_id) 
VALUES ('Mehmet', 'Yýldýz', 5, '56789012345', '5555678901', 5, 5);

INSERT INTO UYE (uye_ad, uye_soyad, kitap_id, uye_tc, uye_tel, il_id, ilce_id) 
VALUES ('Ayþe', 'Kara', 4, '67890123456', '5556789012', 6, 6);

INSERT INTO UYE (uye_ad, uye_soyad, kitap_id, uye_tc, uye_tel, il_id, ilce_id) 
VALUES ('Fatma', 'Yýlmaz', 5, '78901234567', '5557890123', 7, 7);

INSERT INTO UYE (uye_ad, uye_soyad, kitap_id, uye_tc, uye_tel, il_id, ilce_id) 
VALUES ('Mustafa', 'Demir', 8, '89012345678', '5558901234', 8, 8);

INSERT INTO UYE (uye_ad, uye_soyad, kitap_id, uye_tc, uye_tel, il_id, ilce_id) 
VALUES ('Emine', 'Çelik', 9, '90123456789', '5559012345', 9, 9);

INSERT INTO UYE (uye_ad, uye_soyad, kitap_id, uye_tc, uye_tel, il_id, ilce_id) 
VALUES ('Ali', 'Aksoy', 10, '01234567890', '5550123456', 10, 10);

INSERT INTO UYE (uye_ad, uye_soyad, kitap_id, uye_tc, uye_tel, il_id, ilce_id) 
VALUES ('Sema', 'Kurt', 1, '12345678901', '5551234567', 1, 1);

INSERT INTO UYE (uye_ad, uye_soyad, kitap_id, uye_tc, uye_tel, il_id, ilce_id) 
VALUES ('Cem', 'Aslan', 2, '23456789012', '5552345678', 2, 2);

INSERT INTO UYE (uye_ad, uye_soyad, kitap_id, uye_tc, uye_tel, il_id, ilce_id) 
VALUES ('Deniz', 'Turan', 3, '34567890123', '5553456789', 3, 3);
*/