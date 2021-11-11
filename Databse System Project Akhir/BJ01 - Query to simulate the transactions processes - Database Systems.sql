USE Laboratory

/*
Kelompok BJ01
--  2301874986	Calvin
--  2301958000	Ahmad Nadhirsyah Jaman
--  2301865395	Ervan Cahyadi
--  2301922814	Syafrizal Kurniadin
*/



-- sebelum membuka sebuah toko yang menjual berbagai macam film, 
-- pemilik toko harus mempunyai sebuah film dengan memuat beberapa deskripsi seperti genre,director dan publisher dari film tersebut

-- DIRECTOR
INSERT INTO DIRECTOR 
VALUES 
('DIR020','Syafrizal Kurniadin','Kurniadin@gmail.com','Jakarta','Carina Sayang 20','088471275830')

-- Publisher
INSERT INTO PUBLISHERR 
VALUES 
('PUB019','Pertamina Pictures','Pertamina.Picture@gmail.com','Jakarta','Jakarta Jaya Raya 21','081248730193')

--Movie
INSERT INTO MOVIE 
VALUES 
('MOV021','Laskar Pelangi','FILM TERLARIS PADA TAHUN 2008','2008-07-12','55000','DIR020','PUB019')

-- GENRE
INSERT INTO GENRE 
VALUES 
('GEN022','DOCUMENTARY','MOV021')


-- Transaction
-- seorang ingin membeli film disalah satu tempat bernama Book Movie,
-- sebelum membeli film tersebut user ingin melihat film apa saja yang dijual

SELECT * FROM MOVIE

-- Setelah melihat daftar film yang tersedia pembeli ingin membeli salah satu film tersebut
-- Tetapi staff ingin meminta data diri dari pembeli tersebut

INSERT INTO USER_Movie
VALUES
('USR019','Fernandio','Fernandio Aryo','Fernandio@gmail.com','Jakarta','Laki-Laki')
-- setelah melakukan input data diri, user dipersilahkan untuk memilih film yang diinginkan
-- pembeli ingin membeli film dengan ID MOV016 dan banyak film yang ingin di beli
INSERT INTO DETAIL_TRANSACTION
VALUES
('SAL032','USR019','MOV021','10','2012-07-02','Laskar Pelangi')

-- setelah memilih film yang ingin dibeli
-- user harus melakukan pembayaran yang dibayarkan kepada staff kasir
SELECT	Dt.TransactionID,
		Um.UserID,
		Mov.MovieID,
		Dt.MoviePurchased,
		Dt.QuantityMovie,
		Mov.MoviePrice,
		(Dt.QuantityMovie*Mov.MoviePrice) AS SUBTOTAL_PRICE,
		Dt.TransactionDate
FROM DETAIL_TRANSACTION Dt, USER_Movie Um, MOVIE Mov
WHERE Um.UserID = Dt.UserID AND Mov.MovieID = Dt.MovieID AND Um.UserID = 'USR019'

-- Setelah berhasil membeli sebuah film,
-- User memberikan Review kepada 1 film yang dia beli

INSERT INTO REVIEW_MOVIE
VALUES
('MOV021','USR019','2008-07-04','Recommended','Filmnya bagus, Menceritakan perjuangan Seorang murid didaerah pelosok negeri ini untuk mendapatkan pendidikan')

-- User tidak bisa memberikan review kepada movie yang sama ketika sudah pernah memberikan review kepada sebuah movie
INSERT INTO REVIEW_MOVIE
VALUES
('MOV021','USR019','2008-07-05','Recommended','Filmnya bagus, Menceritakan perjuangan Seorang murid didaerah pelosok negeri ini untuk mendapatkan pendidikan')
