USE Laboratory

/*
Kelompok BJ01
--  2301874986	Calvin
--  2301958000	Ahmad Nadhirsyah Jaman
--  2301865395	Ervan Cahyadi
--  2301922814	Syafrizal Kurniadin
*/


-- •	Master table must be filled with more than or equals to 10 data.
--Insert USER_Movie
INSERT INTO USER_Movie 
VALUES
('USR001','Kurniadin','Kurniadin','Kurniadin@gmail.com','Jakarta','Laki-Laki'),
('USR002','Wahyuu','Wahyu Adi','Wahyu.Adi@gmail.com','Bandung','Laki-Laki'),
('USR003','Additt','Addit Andreans','Addit@gmail.com','Bandung','Laki-Laki'),
('USR004','Husain','Husain','Husain@gmail.com','Bali','Laki-Laki'),
('USR005','dillah','Ubaydillah','Ubaydillah@gmail.com','Semarang','Laki-Laki'),
('USR006','Adegun','Ade Gunawan','Ade.Gun@gmail.com','Jakarta','Laki-Laki'),
('USR007','Nabila','Nabila Fitriyani','NabilaFitriyani@gmail.com','Bandung','Laki-Laki'),
('USR008','Famela','Maya Famela','Maya.Famela@gmail.com','Yogja','Laki-Laki'),
('USR009','Rahman','Rahman Hakim','RahmanHakim@gmail.com','Surabaya','Laki-Laki'),
('USR010','Albaqi','HayuAlbaqi','Hayu_Albaqi@gmail.com','Bima','Laki-Laki'),
('USR011','Aridull','Ari Hidayat','aridul@gmail.com','Padang','Laki-Laki'),
('USR012','Lionel','Lionel Alwan','Alwan_lionel@gmail.com','Bandung','Laki-Laki'),
('USR013','Leonard','Leonardin','Leonard@gmail.com','Jakarta','Laki-Laki'),
('USR014','Rizalee','Syafrizal','Syafrizal@gmail.com','Papua','Laki-Laki'),
('USR015','Wijayaa','Aldo Wijaya','Wijaya.Aldo@gmail.com','Kudus','Laki-Laki'),
('USR016','Kusumaa','Wijaya Kusuma','Kusuma.Wijaya@gmail.com','Bekasi','Laki-Laki'),
('USR017','Amall udin','Amalludin Wahid','Amalludin@gmail.com','Bekasi','Laki-Laki'),
('USR018','Muhammad','Muhammad','Muhammad@gmail.com','Bali','Laki-Laki')


SELECT * FROM USER_Movie
DELETE FROM USER_Movie

-- •	Transaction table must be filled with more than or equals to 15 data.
--Insert DIRECTOR
INSERT INTO DIRECTOR 
VALUES 
('DIR001','Joko Anwar','Joko@gmail.com','Bandung','Jalan Adipati Kertabumi 1','081234756812'),
('DIR002','Hadrah Daeng Ratu','Hadrah@gmail.com','Bandung','Jalan Adipati Kertabumi 2','081234756913'),
('DIR003','Kimo Stamboel','Kimo@gmail.com','Jakarta','Jalan Pasar Senen blok 1','081234756923'),
('DIR004','Nayato Fio Naula','Nayato@gmail.com','Surabaya','Jalan MH Thamrin ','081234756393'),
('DIR005','Helfic C.H. Kardit','Helfic@gmail.com','Semarang','Jalan Ahmad Yani 2','081230916352'),
('DIR006','Rizal Mantovani','Rizal@gmail.com','Padang','Jalan Jhoni Anwar','081234712084'),
('DIR007','Awi Suryadi','Awi@gmail.com','Jakarta','Jalan Pasar Senen blok 2','081234085112'),
('DIR008','Rocky Soraya','Rocky@gmail.com','Malang','Alun Alun Batu Malang','081234708372'),
('DIR009','Timo Tjahjanto','Timo@gmail.com','Bali','Jalan Astina Selatan Gianyar','081234709212'),
('DIR010','Riri Riza','Riri@gmail.com','Yogjakarta','Jalan Kaliurang Utara','081230827342'),
('DIR011','Upi Avianto','Upi@gmail.com','Balikpapan','Jalan Taunku Imam Bonjol','081974291023'),
('DIR012','Guntur','Guntur@gmail.com','Jakarta','Jalan Pasar Senen blok 3','081292378578'),
('DIR013','Hanung Bramantyo','Hanung@gmail.com','Medan','Jalan Letjen Supartman','081208213858'),
('DIR014','Raditya Dika','Raditya@gmail.com','Sulawesi','Jalan Karang Anyar','081234953912'),
('DIR015','Ernest Prakasa','Ernest@gmail.com','Aceh','Jalan Agus Salim Barat','081234958283'),
('DIR016','Panji Pragiwaksono','Pragiwaksono@gmail.com','Bali','Jalan Adipati Kertabumi 13','085939256812'),
('DIR017','Leonardo','Leonardo@gmail.com','Bali','Jalan Adipati Kertabumi 20','085939256232')

SELECT * FROM DIRECTOR
DELETE FROM DIRECTOR

-- INSERT PUBLISHERR
INSERT INTO PUBLISHERR 
VALUES 
('PUB001','Falcon Pictures','Falcon.Picture@gmail.com','Bandung','Jalan MH Thamrin ','081234756812'),
('PUB002','Dapur Film','Dapur.Film@gmail.com','Jakarta','Jalan Ahmad Yani 2','081234756913'),
('PUB003','Surya Citra Pictures','Surya.Pictures@gmail.com','Yogjakarta','Jalan Kaliurang Utara','081234756923'),
('PUB004','MNC Pictures','MNC.Pictures@gmail.com','Semarang','Jalan Taunku Imam Bonjol','081234756393'),
('PUB005','Focus Features','Focus@gmail.com','Denpasar','Jalan Pasar Senen blok 3','081230916352'),
('PUB006','Weinstein Company','Weinstein@gmail.com','Bandung','Alun Alun Batu Malang','081234712084'),
('PUB007','New Line Camera ','New.Camera@gmail.com','Jakarta','Jalan Astina Selatan Gianyar','081234085112'),
('PUB008','Sony Pictures','Pictures.Sony@gmail.com','Yogjakarta','Jalan Adipati Kertabumi 1','081234708372'),
('PUB009','Experia Pictures','Experia@gmail.com','Semarang','Jalan Adipati Kertabumi 2','081234709212'),
('PUB010','20th Century Fox','Century@gmail.com','Denpasar','Jalan Pasar Senen blok 1','081230827342'),
('PUB011','Warner Bros','Warner.Bros@gmail.com','Bandung','Jalan Letjen Supartman','081974291023'),
('PUB012','Disney Company','Disney.Company@gmail.com','Jakarta','Jalan Karang Anyar','081292378578'),
('PUB013','Universal Studio','Universal.Studio@gmail.com','Yogjakarta','Jalan Agus Salim Barat','081208213858'),
('PUB014','MD Entertaiment','Entertaiment.MD@gmail.com','Semarang','Jalan Jhoni Anwar','081234953912'),
('PUB015','SinemaArt','SinemaArt@gmail.com','Denpasar','Jalan Pasar Senen blok 2','081234958283'),
('PUB016','Cinema Pictures','Cinema.Picture@gmail.com','Bandung','Jalan MH Thamrin','081234723812'),
('PUB017','Lavani Pictures','Lavani.Picture@gmail.com','Bandung','Jalan Asia Afrika','081234723812'),
('PUB018','Lavani Pictures','Lavani.Picture@gmail.com','Jakarta','Jalan Asia Afrika 21','081234723812')

SELECT * FROM PUBLISHERR
DELETE FROM PUBLISHERR

-- INSERT MOVIE
INSERT INTO MOVIE 
VALUES 
('MOV001','NKCTHI','FILM TERBAIK PADA TAHUN 2001','2001-02-12','65000','DIR007','PUB002'),
('MOV002','DI DOEL BETAWI','FILM TERBAIK PADA TAHUN 2003','2003-04-26','75000','DIR012','PUB009'),
('MOV003','MANGUJIWO','FILM TERBAIK PADA TAHUN 2007','2007-07-14','75000','DIR009','PUB003'),
('MOV004','DANUR','FILM TERBAIK PADA TAHUN 2006','2006-05-29','65000','DIR008','PUB007'),
('MOV005','WARKOP DKI','FILM TERBAIK PADA TAHUN 2009','2009-01-16','55000','DIR011','PUB013'),
('MOV006','SRIGALA TERAKHIR','FILM TERBAIK PADA TAHUN 2002','2002-06-20','65000','DIR005','PUB001'),
('MOV007','GURU-GURU GOKIL','FILM TERBAIK PADA TAHUN 2001','2001-09-28','45000','DIR014','PUB004'),
('MOV008','IMPERFECT','FILM TERBAIK PADA TAHUN 2013','2013-05-20','50000','DIR003','PUB008'),
('MOV009','CEK TOKO SEBELAH','FILM TERFAVORIT PADA TAHUN 2013','2001-07-20','65000','DIR015','PUB014'),
('MOV010','CRITICAL ELEVEN','FILM TERLARIS PADA TAHUN 2004','2004-08-10','75000','DIR001','PUB011'),
('MOV011','RUDY HABIBIE','FILM TERFAVORIT PADA TAHUN 2007','2007-02-22','65000','DIR013','PUB012'),
('MOV012','LASKAR PELANGI 2','FILM TERLARIS PADA TAHUN 2008','2008-02-23','55000','DIR004','PUB005'),
('MOV013','PENGABDI SETAN','FILM TERBAIK PADA TAHUN 2008','2008-01-16','50000','DIR002','PUB015'),
('MOV014','JOHN WICK : CHAPTER 3','FILM TERLARIS PADA TAHUN 2003','2003-01-19','45000','DIR006','PUB010'),
('MOV015','THE RAID 2','FILM TERFAVORIT PADA TAHUN 2009','2009-02-26','75000','DIR010','PUB006'),
('MOV016','Love In London','FILM TERLARIS PADA TAHUN 2012','2012-02-12','65000','DIR016','PUB016'),
('MOV018','Kasih Sayang Guru','FILM TERLARIS PADA TAHUN 2012','2012-07-12','65000','DIR017','PUB018'),
('MOV019','Casino King','FILM TERLARIS PADA TAHUN 2001','2001-07-12','65000','DIR008','PUB002'),
('MOV020','GAME OF THRONE','FILM TERLARIS PADA TAHUN 2001','2001-07-12','65000','DIR008','PUB002'),
('MOV022','GAME OF THRONE','FILM TERLARIS PADA TAHUN 2001','2001-09-27','65000','DIR008','PUB002')

SELECT * FROM MOVIE
DELETE FROM MOVIE


--Insert Genre
INSERT INTO GENRE 
VALUES 
('GEN001','Horor','MOV003'),
('GEN002','Comedy','MOV007'),
('GEN003','Drama','MOV007'),
('GEN004','Romance','MOV008'),
('GEN005','Action','MOV014'),
('GEN006','Adventure','MOV014'),
('GEN007','Action','MOV006'),
('GEN008','Drama','MOV005'),
('GEN009','Comedy','MOV009'),
('GEN010','Romance','MOV010'),
('GEN011','Drama','MOV012'),
('GEN012','Action','MOV015'),
('GEN013','Horor','MOV013'),
('GEN014','Adventure','MOV015'),
('GEN015','Comedy','MOV002'),
('GEN016','Comedy','MOV001'),
('GEN017','Romance','MOV011'),
('GEN018','Drama','MOV001'),
('GEN019','Horor','MOV004'),
('GEN020','Comedy','MOV005'),
('GEN021','ROMANCE','MOV016'),
('GEN023','Action','MOV022')

SELECT * FROM GENRE
DELETE FROM GENRE



-- INSERT Review_Movie
INSERT INTO REVIEW_MOVIE 
VALUES 
('MOV001','USR015','2001-02-20','Recommended','Filmnya bagus, memberikan pesan moral yang baik untuk kedepannya'),
('MOV002','USR010','2003-05-02','Recommended','Menceritakan akhir kisah cinta segitiga Doel-Sarah-Zaenab yang sesungguhnya'),
('MOV003','USR002','2007-06-22','Not Recommended','Menurut saya bagi yang tidak suka horor sebaiknya tidak menonton karena banyak hal seram didalamnya'),
('MOV004','USR005','2006-06-07','Recommended','menceritakan sosok perempuan yang bisa berkomunikasi dengan hal tak kasat mata'),
('MOV005','USR014','2009-01-27','Recommended','Menceritakan kembali warkop DKI dimasa lalu dengan dimensi yang berbeda'),
('MOV006','USR007','2002-06-30','Not Recommended','tidak baik untuk di tonton karena banyak mengandung unsur kekerasan'),
('MOV007','USR003','2001-10-02','Recommended','Filmnya Bagus, Lucu dan Alurnya menyenangkan '),
('MOV008','USR001','2013-05-28','Recommended','Filmnya memberikan pesan untuk menyayangi diri sendiri'),
('MOV009','USR013','2001-07-24','Not Recommended','Hanya mengadung unsur komedi tidak memiliki pesan yang terkandung '),
('MOV010','USR009','2004-08-11','Recommended','Mengajarkan kita bahwa cinta perlu diperjuangkan, dan cinta harus bisa mengalahkan kesedihan dan rasa kehilangan.'),
('MOV011','USR006','2007-02-24','Recommended','menceritakan sosok Pak habibie muda yang jenius, kreatif, dan pantang menyerah'),
('MOV012','USR012','2008-02-25','Not Recommended','Hanya mengadung unsur komedi tidak memiliki pesan yang terkandung '),
('MOV013','USR004','2008-01-22','Recommended','Film ini sulit untuk ditebak dan banyak yang mengejutkan sehinggan mendapatkan sensasi yang lebih'),
('MOV014','USR008','2003-01-23','Not Recommended','Film ini banyak mengandung kekerasan tidak pantas untuk lihat oleh anak-anak'),
('MOV015','USR011','2009-03-03','Recommended','Menurut saya ini film cukup baik dan ada peran dari aktris indonesia yang berperan didalamnya')

SELECT * FROM REVIEW_MOVIE 
DELETE FROM REVIEW_MOVIE

-- DETAIL TRANSACTION
INSERT INTO DETAIL_TRANSACTION 
VALUES 
('SAL031','USR005','MOV004','70','2006-06-07','DANUR'),
('SAL001','USR015','MOV001','1','2001-02-20','NKCTHI'),
('SAL002','USR010','MOV002','1','2003-05-02','DI DOEL BETAWI'),
('SAL003','USR002','MOV003','1','2007-06-22','MANGUJIWO'),
('SAL004','USR005','MOV004','31','2006-06-07','DANUR'),
('SAL005','USR014','MOV005','8','2009-01-27','WARKOP DKI'),
('SAL006','USR007','MOV006','2','2002-06-30','SRIGALA TERAKHIR'),
('SAL007','USR003','MOV007','2','2001-10-02','GURU-GURU GOKIL'),
('SAL008','USR001','MOV008','21','2013-05-28','IMPERFECT'),
('SAL009','USR013','MOV009','8','2001-07-24','CEK TOKO SEBELAH'),
('SAL010','USR009','MOV010','11','2004-08-11','CRITICAL ELEVEN'),
('SAL011','USR006','MOV011','6','2007-02-24','RUDY HABIBIE'),
('SAL012','USR012','MOV012','1','2008-02-25','LASKAR PELANGI 2'),
('SAL013','USR004','MOV013','1','2008-01-22','PENGABDI SETAN'),
('SAL014','USR008','MOV014','3','2003-01-23','JOHN WICK : CHAPTER 3'),
('SAL015','USR011','MOV015','6','2009-03-03','THE RAID 2'),
('SAL016','USR013','MOV007','4','2001-02-03','GURU-GURU GOKIL'),
('SAL017','USR001','MOV009','10','2001-07-28','CEK TOKO SEBELAH'),
('SAL018','USR008','MOV004','2','2006-06-10','DANUR'),
('SAL019','USR015','MOV008','2','2013-06-08','IMPERFECT'),
('SAL020','USR004','MOV015','3','2009-03-19','THE RAID 2'),
('SAL021','USR007','MOV003','21','2007-07-01','MANGUJIWO'),
('SAL022','USR002','MOV010','3','2004-08-22','CRITICAL ELEVEN'),
('SAL023','USR005','MOV001','2','2001-02-26','NKCTHI'),
('SAL024','USR014','MOV006','1','2002-03-10','SRIGALA TERAKHIR'),
('SAL025','USR001','MOV012','1','2008-03-02','LASKAR PELANGI 2'),
('SAL026','USR016','MOV016','2','2012-03-02','Love In London'),
('SAL027','USR016','MOV003','2','2007-06-22','MANGUJIWO'),
('SAL028','USR018','MOV004','2','2006-06-19','DANUR'),
('SAL029','USR018','MOV006','1','2006-06-19','DANUR'),
('SAL030','USR017','MOV019','2','2012-07-02','Kasih Sayang Guru')


SELECT *FROM DETAIL_TRANSACTION
DELETE FROM DETAIL_TRANSACTION