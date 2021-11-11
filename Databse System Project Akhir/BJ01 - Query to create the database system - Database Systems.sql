CREATE DATABASE Laboratory
USE Laboratory
/*
Kelompok BJ01
--  2301874986	Calvin
--  2301958000	Ahmad Nadhirsyah Jaman
--  2301865395	Ervan Cahyadi
--  2301922814	Syafrizal Kurniadin
*/


CREATE TABLE USER_Movie(
	UserID VARCHAR(6),
	UserNickname VARCHAR(255) NOT NULL,
	UserFullname VARCHAR (255) NOT NULL,
	UserEmail VARCHAR(255) NOT NULL,
	UserCity VARCHAR (255) NOT NULL,
	UserDescription VARCHAR(255) NOT NULL,
	PRIMARY KEY(UserID),
	CONSTRAINT U_ID CHECK (UserID LIKE 'USR[0-9][0-9][0-9]'),
	CONSTRAINT U_Nickname CHECK(LEN(UserNickname) > 5 ),
	CONSTRAINT U_Email CHECK (UserEmail LIKE '%@%.com'),
)

CREATE TABLE DIRECTOR(
	DirectorID VARCHAR(6),
	DirectorName VARCHAR(255) NOT NULL,
	DirectorEmail VARCHAR(255) NOT NULL,
	DirectorCity VARCHAR(255) NOT NULL,
	DirectorAddress VARCHAR(255) NOT NULL,
	DirectorPhone NUMERIC(12,0) NOT NULL,
	PRIMARY KEY(DirectorID),
	CONSTRAINT Dir_ID CHECK (DirectorID LIKE 'DIR[0-9][0-9][0-9]'),
	CONSTRAINT Dir_Email CHECK (DirectorEmail LIKE '%@%.com')
)

CREATE TABLE PUBLISHERR(
	PublisherID VARCHAR(6),
	PublisherName VARCHAR(255) NOT NULL,
	PublisherEmail VARCHAR(255) NOT NULL,
	PublisherCity VARCHAR(255) NOT NULL,
	PublisherAddress VARCHAR(255) NOT NULL,
	Phone NUMERIC(12,0) NOT NULL,
	PRIMARY KEY(PublisherID),
	CONSTRAINT PUB_ID CHECK (PublisherID LIKE 'PUB[0-9][0-9][0-9]'),
	CONSTRAINT PUB_Email CHECK (PublisherEmail LIKE '%@%.com'),
	CONSTRAINT PUB_ADD CHECK (LEN (PublisherAddress) > 15)
)


CREATE TABLE MOVIE(
	MovieID VARCHAR(6),
	MovieTittle VARCHAR (255) NOT NULL,
	MovieDescription VARCHAR (255) NOT NULL,
	MovieReleaseDate DATE NOT NULL,
	MoviePrice VARCHAR (255) NOT NULL,
	PRIMARY KEY(MovieID),
	CONSTRAINT Mov_ID CHECK (MovieID LIKE 'MOV[0-9][0-9][0-9]'),
	CONSTRAINT Mov_Release CHECK (YEAR(MovieReleaseDate) BETWEEN '2000' AND '2016'),	
	CONSTRAINT Mov_Desc CHECK (LEN(MovieDescription) >= 20),
	DirectorID VARCHAR(6) FOREIGN KEY REFERENCES DIRECTOR(DirectorID),
	PublisherID VARCHAR (6) FOREIGN KEY REFERENCES PUBLISHERR(PublisherID)
)

CREATE TABLE GENRE(
	GenreID VARCHAR(6),
	GenreName VARCHAR(255) NOT NULL,
	PRIMARY KEY(GenreID),
	CONSTRAINT GEN_ID CHECK (GenreID LIKE 'GEN[0-9[0-9][0-9][0-9]'),
	MovieID VARCHAR(6) FOREIGN KEY REFERENCES MOVIE(MovieID)
)
DROP TABLE GENRE
-- Kak saya ga tau kenapa kalau saya hanya buat constraint (GenreID LIKE 'GEN[0-9[0-9][0-9][0-9]')
-- ketika saya input GEN001 ga bisa tapi kalau GEN01 baru bisa makanya saya tambahin [0-9[0-9][0-9][0-9] menjadi 4 agar bisa memenuhi syarat



CREATE TABLE DETAIL_TRANSACTION(
	TransactionID VARCHAR (6),
	UserID VARCHAR(6) FOREIGN KEY REFERENCES USER_Movie(UserID),
	MovieID VARCHAR(6) FOREIGN KEY REFERENCES MOVIE(MovieID),
	QuantityMovie INT NOT NULL,
	TransactionDate DATE NOT NULL,
	MoviePurchased VARCHAR(255) NOT NULL,
	PRIMARY KEY (TransactionID),
	CONSTRAINT Sal_ID CHECK (TransactionID LIKE 'SAL[0-9][0-9][0-9]')
)

DROP TABLE DETAIL_TRANSACTION

CREATE TABLE REVIEW_MOVIE(
	MovieID VARCHAR(6) FOREIGN KEY REFERENCES MOVIE(MovieID),
	UserID VARCHAR(6) FOREIGN KEY REFERENCES USER_Movie(UserID),
	Review_Date DATE NOT NULL,
	Recommendation_Sta VARCHAR(255)NOT NULL,
	Review_Content VARCHAR(255) NOT NULL,
	PRIMARY KEY (UserID,MovieID),
	CONSTRAINT Rev_Cont CHECK (LEN(Review_Content) >20),
	CONSTRAINT Rec_Sta CHECK (Recommendation_Sta = 'Recommended' OR Recommendation_Sta = 'Not Recommended'),	
)

SELECT * FROM REVIEW_MOVIE
drop table REVIEW_MOVIE

DROP DATABASE Laboratory