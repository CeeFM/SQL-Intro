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

--SELECT DISTINCT al.Title
--From Album al
--	LEFT Join Song s
--	On s.AlbumId = al.Id
--	Where s.AlbumId IS NULL;

--Using the INSERT statement, add one of your favorite artists to the Artist table.

--INSERT INTO Artist (ArtistName, YearEstablished) VALUES ('Pink Floyd', 1965);

--Using the INSERT statement, add one, or more, albums by your artist to the Album table.

--INSERT INTO Album (Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId) VALUES ('The Piper At The Gates of Dawn', '08/04/1967', 246, 'Columbia', 31, 2);

--Using the INSERT statement, add some songs that are on that album to the Song table.

--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('See Emily Play', 174, '08/04/1967', 4, 31, 25);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('Lucifer Sam', 189, '08/04/1967', 4, 31, 25);
--INSERT INTO Song (Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId) VALUES ('The Gnome', 134, '08/04/1967', 4, 31, 25);

--Write a SELECT query that provides the song titles, album title, and artist name for all of the data you just entered in. Use the LEFT JOIN keyword sequence to connect the tables, and the WHERE keyword to filter the results to the album and artist you added.

--SELECT s.Title as 'Song Title', al.Title as 'Album Title', a.ArtistName as 'Artist Name'
--FROM Song s 
--LEFT JOIN Album al ON s.AlbumId = al.Id
--LEFT JOIN Artist a ON s.ArtistId = a.Id
--WHERE al.ArtistId = 31;