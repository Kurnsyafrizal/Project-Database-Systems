USE Laboratory
/*
Kelompok BJ01
--  2301874986	Calvin
--  2301958000	Ahmad Nadhirsyah Jaman
--  2301865395	Ervan Cahyadi
--  2301922814	Syafrizal Kurniadin
*/

-- CASE 1
SELECT	Mo.MovieID,
		Mo.MovieTittle,
		Mo.MovieDescription,
		Rm.Review_Content
FROM MOVIE Mo
JOIN REVIEW_MOVIE Rm ON mo.MovieID = Rm.MovieID
JOIN USER_Movie UM ON Rm.UserID= Um.UserID
WHERE Review_Content LIKE '%review (s)' AND UserCity = 'Bandung' OR Recommendation_Sta = 'Not Recommended'

-- CASE 2 
SELECT	Gen.GenreID,
		Gen.GenreName,
		COUNT(Mo.MovieID) AS TotalMovie,
		Dc.DirectorID
FROM MOVIE Mo
JOIN GENRE Gen ON Mo.MovieID = Gen.MovieID
JOIN DIRECTOR Dc ON Mo.DirectorID = dc.DirectorID
WHERE Dc.DirectorID BETWEEN  'DIR004' AND 'DIR008' AND MONTH(mo.MovieReleaseDate) = 2
GROUP BY Gen.GenreID,Gen.GenreName,Dc.DirectorID


-- CASE 3 
SELECT  DC.DirectorID,
        DC.DirectorName,
		-- saya menemukan 2 cara untuk menyelesaikan ini boleh kakak cek sendiri :)
		--Concat('+62', dc.directorphone)AS DirectorPhone,
        '+62'+ CAST(DC.DirectorPhone AS varchar) AS DirectorPhone,
        SUM(dt.QuantityMovie) AS MovieSold,
        (Dt.QuantityMovie*Mo.MoviePrice) AS TotalTransaction
FROM DETAIL_TRANSACTION Dt 
join MOVIE Mo ON  Dt.MovieID = Mo.MovieID
join DIRECTOR Dc ON Mo.DirectorID = Dc.DirectorID
WHERE Dc.DirectorID BETWEEN 'DIR003' AND 'DIR009' AND QuantityMovie >=20
GROUP BY DC.DirectorID, DC.DirectorName, Dt.QuantityMovie,DC.DirectorPhone, Mo.MoviePrice

-- CASE 4 
SELECT	um.UserNickname,
		UPPER(um.UserCity) AS UserCity,
		Dt.MoviePurchased,
		COUNT(DT.QuantityMovie) AS MovieOnwed
FROM USER_Movie um
join DETAIL_TRANSACTION Dt ON UM.UserID = Dt.UserID
join MOVIE mo ON  Dt.MovieID = mo.MovieID
WHERE (um.UserID = 'USR002' OR um.UserID = 'USR003') AND MONTH(mo.MovieReleaseDate)%2 =1
GROUP BY um.UserNickname,UM.UserCity,Dt.MoviePurchased,DT.TransactionDate,mo.MovieReleaseDate


-- CASE 5
--Kelompok Kami Memiliki 2 Cara dan kedua cara tersebut memiliki output yang sama
--Cara 1
SELECT 
 [Numeric User ID] = RIGHT(a.UserID,3),
 [Nickname] = UPPER(UserNickname),
 [USER City] = UserCity
FROM USER_Movie a JOIN DETAIL_TRANSACTION b 
ON a.UserID = b.UserID,
(SELECT [Average] =  AVG(QuantityMovie) FROM DETAIL_TRANSACTION) AS Alias
WHERE QuantityMovie > Alias.Average AND  a.UserNickname LIKE '%l%'

-- Cara 2
SELECT  SUBSTRING(MO.UserID,LEN(MO.UserID)-2,LEN(MO.UserID)) AS NumericUserID,
        UPPER(MO.UserNickname) AS Nickname,
        mo.UserCity
FROM USER_Movie MO
JOIN DETAIL_TRANSACTION DT ON MO.UserID = DT.UserID
WHERE MO.UserNickname LIKE '%l%'
AND DT.QuantityMovie > ISNULL((SELECT AVG(DT.QuantityMovie) FROM DETAIL_TRANSACTION DT),0)


/* Melihat Rata Rata dari Semua Movie yang Terjual
SELECT AVG(DT.QuantityMovie) AS AVGMovie
FROM DETAIL_TRANSACTION DT
*/

-- CASE 6
SELECT	MO.MovieID,
		MO.MovieTittle,
		PB.PublisherName,
		SUBSTRING(PB.PublisherEmail,1,CHARINDEX('@',PB.PublisherEmail)-1) AS PublisherEmail,
		dt.QuantityMovie
FROM MOVIE MO
JOIN PUBLISHERR PB ON MO.PublisherID = PB.PublisherID
JOIN DETAIL_TRANSACTION DT ON MO.MovieID = DT.MovieID
WHERE dt.QuantityMovie > ISNULL(( SELECT MAX(dt.QuantityMovie) 
FROM DETAIL_TRANSACTION DT WHERE DAY(dt.QuantityMovie) = 22),0)

/* Melihat maksimal quantitymovie terjual pada hari ke 22
SELECT MAX(dt.QuantityMovie) 
FROM DETAIL_TRANSACTION DT WHERE DAY(dt.QuantityMovie) = 22
*/

-- CASE 7 FIX
-- Kelompok Kami Memiliki 2 Cara dan kedua cara tersebut memiliki output yang sama
-- CARA 1
SELECT	DC.DirectorID,
		DC.DirectorName,
		LOWER(MO.MovieTittle) AS MovieTittle,
		COUNT(GenreID) AS TotalGenre,
		MAX(MO.MovieReleaseDate) AS MAXRelease
FROM MOVIE MO
JOIN DIRECTOR DC ON MO.DirectorID = DC.DirectorID
JOIN GENRE GE ON MO.MovieID = GE.MovieID
WHERE MONTH(MO.MovieReleaseDate) = 9 AND Mo.MovieReleaseDate = DATEADD(DAY, -1, (SELECT MAX(MovieReleaseDate) FROM Movie WHERE MONTH(MovieReleaseDate) = 9) )
GROUP BY DC.DirectorID, DC.DirectorName,MO.MovieTittle,Mo.MovieReleaseDate

--CARA 2
SELECT mv.DirectorID, DirectorName, mv.MovieID,
    [Movie Title] = LOWER(MovieTittle),
    [Total Genre] = tg.TotalGenre
FROM MOVIE mv, DIRECTOR dr,
 (SELECT m.MovieID, TotalGenre = COUNT(GenreID)
  FROM GENRE gn, MOVIE m
  WHERE m.MovieID = gn.MovieID
    AND m.MovieReleaseDate = (SELECT DATEADD(DD, -1, MAX(MovieReleaseDate)) FROM MOVIE
         WHERE MONTH(MovieReleaseDate) = 9)
  GROUP BY m.MovieID) AS tg
WHERE mv.DirectorID = dr.DirectorID
  AND mv.MovieID = tg.MovieID
ORDER BY mv.DirectorID ASC


/*SELECT	DATEADD(DAY, -1, MAX(MovieReleaseDate)),
		COUNT(GE.GenreID),
		MO.MovieReleaseDate
FROM MOVIE MO
JOIN DIRECTOR DC ON MO.DirectorID = DC.DirectorID
JOIN GENRE GE ON MO.MovieID = GE.MovieID
WHERE	MONTH(MO.MovieReleaseDate) = 9
group by GE.GenreID,MO.MovieReleaseDate
*/

/*
SELECT 	MO.MovieReleaseDate
FROM MOVIE MO
*/

/*
SELECT MAX(MovieReleaseDate)
FROM MOVIE MO
WHERE	MONTH(MO.MovieReleaseDate) = 9
*/


-- CASE 8 
SELECT	UM.UserNickname,
		SUBSTRING(UM.UserFullname,1,CHARINDEX(' ',UM.UserFullname)) AS FirstName,
		SUM(DT.QuantityMovie) AS TotalMovie
FROM USER_Movie UM
JOIN DETAIL_TRANSACTION DT ON UM.UserID = DT.UserID 
WHERE DAY(DT.TransactionDate) = 20
GROUP BY UM.UserNickname, UM.UserFullname


-- CASE 9 
CREATE VIEW [CustomUserViewer] AS
SELECT	UM.UserID,
		UM.UserNickname,
		MAX(DT.QuantityMovie) AS MaximumQuantity,
		MIN(DT.QuantityMovie) AS MinimumQuantity
FROM USER_Movie UM
JOIN DETAIL_TRANSACTION DT ON UM.UserID = DT.UserID
WHERE DAY(DT.TransactionDate) = 19 AND UM.UserNickname LIKE '%h%'
GROUP BY UM.UserID,UM.UserNickname

SELECT * FROM CustomUserViewer

-- CASE 10
CREATE VIEW [CustomPublisherViewer] AS
SELECT	PB.PublisherName,
		MO.MovieTittle,
		CONVERT(VARCHAR,MO.MovieReleaseDate,106) AS MovieRelease,
		SUM(DT.QuantityMovie) AS TotalPurchase,
		MIN(DT.QuantityMovie) AS MinimumQuantity
FROM MOVIE MO
JOIN PUBLISHERR PB ON MO.PublisherID =PB.PublisherID
JOIN DETAIL_TRANSACTION DT ON DT.MovieID = MO.MovieID
WHERE PB.PublisherCity = 'Jakarta' AND MONTH(MO.MovieReleaseDate) = 7
GROUP BY PB.PublisherName,MO.MovieTittle,MO.MovieReleaseDate
-- saya menampilkan Month dengan insial angka pada bulan tersebut
-- karena july pada bulan ke 7 maka MONTH(MO.MovieReleaseDate) = 7
-- Sehingga menampilkan bulan july

SELECT * FROM CustomPublisherViewer