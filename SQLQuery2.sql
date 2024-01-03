--Query all of the entries in the Genre table

--Select * from Genre;

--Query all the entries in the Artist table and order by the artist's name. HINT: use the ORDER BY keywords

--Select * from Artist
--Order By ArtistName;

-- Write a SELECT query that lists all the songs in the Song table and include the Artist name

--select s.Title,
--	   a.ArtistName
--from Song s
--	 Left Join Artist a on s.ArtistId = a.id;

--Write a SELECT query that lists all the Artists that have a Pop Album


--select distinct Artist.ArtistName,
--	   Artist.Id,
--	   Album.GenreId
--from Artist
--	Inner Join Album on Artist.Id = Album.ArtistId AND Album.GenreId = 7;

--Write a SELECT query that lists all the Artists that have a Jazz or Rock Album

--SELECT DISTINCT a.ArtistName
--From Artist a
--	Join Album al
--	On a.Id = al.ArtistId
--	Where GenreId = 4 OR GenreId = 2;

-- Write a SELECT statement that lists the Albums with no songs

Select * From Song

SELECT DISTINCT al.Title, al.Id
From Album al
	Join Song s
	On s.AlbumId = al.Id