-- CREATED BY : Erifeoluwa Jamgbadi --
/* DATABASE DESCRIPTION :  	This idea is a hobby "app", where it has the user’s hobbies all in one place, where they can find suggestions or 
							when they can't remember what they have read, watched. I have different app, where I put things, such as goodreads for books, 
							netflix list for things to watch, my notes on my phone for other things etc, but I would like it all in one place.  
							For Example, of one of my table, movies table would have subsections - Korean, American, Nigeria, Anime 
							- these will then have their own subsections - watched, not watched, unfinished, recommend.
*/


-- Creating the database called life organiser --
CREATE DATABASE lifeOrganiser;


-- DROPPING THE TABLES
-- I DROPPED THESE TABLES SO WHEN I RUN THE PROGRAM AGAIN, IT WILL DELETE THE TABLES AND BE ABLE TO RUN IT SMOOTHLY 
DROP TABLE Movies CASCADE;
DROP TABLE TVSeries CASCADE;
DROP TABLE Music CASCADE;
DROP TABLE YouTube CASCADE;
DROP TABLE Reading CASCADE;


-- CREATING TABLES --
-- THESE TABLES ARE MY HOBBIES  -- 
CREATE TABLE Movies (
	movieId INTEGER NOT NULL,
    movieName VARCHAR(100) NOT NULL,
    movieGenre VARCHAR(100),
    movieReleaseDate DATE,
    tvSerieslangauge VARCHAR(20) NOT NULL,
    whereToWatch VARCHAR(20),
    
    CONSTRAINT Movies_pk PRIMARY KEY (movieId)
);

CREATE TABLE TVSeries (
	tvSeriesId INTEGER NOT NULL,
    tvSeriesgenre VARCHAR(100),
    tvSeriesReleaseDate DATE,
    tvSerieslangauge VARCHAR(20) NOT NULL,
    currentEpisode INTEGER, -- SHOULD I DO DEPENDING ON THE STATUS OF THE USERS E.G COMPLETED, PAUSED?
    
    CONSTRAINT TVSeries_pk PRIMARY KEY (tvSeriesId)
);

CREATE TABLE Music (
	musicId INTEGER NOT NULL,
    artist VARCHAR(100) NOT NULL,
    releaseDate DATE,
    musicGenre VARCHAR(100),
    albumName VARCHAR(100),
    
    CONSTRAINT Music_pk PRIMARY KEY (musicId)
);

CREATE TABLE YouTube(
	nameOfYouTubers VARCHAR(100) NOT NULL,
    youtubeGenre VARCHAR(100),
    channelName VARCHAR(300) NOT NULL, 
    
    CONSTRAINT YouTube_pk PRIMARY KEY (channelName)
);

CREATE TABLE Reading(
	bookId INTEGER NOT NULL,
	bookGenre VARCHAR(100),
    bookName VARCHAR(100) NOT NULL,
    currentChapter INTEGER,
    
    CONSTRAINT Reading_pk PRIMARY KEY (bookId)
);

-- I'LL ADD THE CODING TABLE IF I HAVE TIME
/*  CREATE TABLE Coding(

);
 */


-- INSERTING DATA INTO TABLES--
-- I DID THESE VALUES BASED ON MY ACTUAL DAILY LIFE
-- 1. inserting into Movies
INSERT INTO  Movies(movieId, movieName, movieGenre, movieReleaseDate, tvSerieslangauge, whereToWatch) values ();
INSERT INTO  Movies(movieId, movieName, movieGenre, movieReleaseDate, tvSerieslangauge, whereToWatch) values ();
INSERT INTO  Movies(movieId, movieName, movieGenre, movieReleaseDate, tvSerieslangauge, whereToWatch) values ();
INSERT INTO  Movies(movieId, movieName, movieGenre, movieReleaseDate, tvSerieslangauge, whereToWatch) values ();
INSERT INTO  Movies(movieId, movieName, movieGenre, movieReleaseDate, tvSerieslangauge, whereToWatch) values ();
INSERT INTO  Movies(movieId, movieName, movieGenre, movieReleaseDate, tvSerieslangauge, whereToWatch) values ();
INSERT INTO  Movies(movieId, movieName, movieGenre, movieReleaseDate, tvSerieslangauge, whereToWatch) values ();
INSERT INTO  Movies(movieId, movieName, movieGenre, movieReleaseDate, tvSerieslangauge, whereToWatch) values ();
INSERT INTO  Movies(movieId, movieName, movieGenre, movieReleaseDate, tvSerieslangauge, whereToWatch) values ();
INSERT INTO  Movies(movieId, movieName, movieGenre, movieReleaseDate, tvSerieslangauge, whereToWatch) values ();

-- 2. inserting into TVSeries
INSERT INTO  TVSeries(tvSeriesId, tvSeriesgenre, tvSeriesReleaseDate, tvSerieslangauge, currentEpisode) values ();
INSERT INTO  TVSeries(tvSeriesId, tvSeriesgenre, tvSeriesReleaseDate, tvSerieslangauge, currentEpisode) values ();
INSERT INTO  TVSeries(tvSeriesId, tvSeriesgenre, tvSeriesReleaseDate, tvSerieslangauge, currentEpisode) values ();
INSERT INTO  TVSeries(tvSeriesId, tvSeriesgenre, tvSeriesReleaseDate, tvSerieslangauge, currentEpisode) values ();
INSERT INTO  TVSeries(tvSeriesId, tvSeriesgenre, tvSeriesReleaseDate, tvSerieslangauge, currentEpisode) values ();
INSERT INTO  TVSeries(tvSeriesId, tvSeriesgenre, tvSeriesReleaseDate, tvSerieslangauge, currentEpisode) values ();
INSERT INTO  TVSeries(tvSeriesId, tvSeriesgenre, tvSeriesReleaseDate, tvSerieslangauge, currentEpisode) values ();
INSERT INTO  TVSeries(tvSeriesId, tvSeriesgenre, tvSeriesReleaseDate, tvSerieslangauge, currentEpisode) values ();
INSERT INTO  TVSeries(tvSeriesId, tvSeriesgenre, tvSeriesReleaseDate, tvSerieslangauge, currentEpisode) values ();
INSERT INTO  TVSeries(tvSeriesId, tvSeriesgenre, tvSeriesReleaseDate, tvSerieslangauge, currentEpisode) values ();

-- 3. inserting into Music
INSERT INTO  Music(musicId, artist, releaseDate, musicGenre, albumNam) values ();
INSERT INTO  Music(musicId, artist, releaseDate, musicGenre, albumNam) values ();
INSERT INTO  Music(musicId, artist, releaseDate, musicGenre, albumNam) values ();
INSERT INTO  Music(musicId, artist, releaseDate, musicGenre, albumNam) values ();
INSERT INTO  Music(musicId, artist, releaseDate, musicGenre, albumNam) values ();
INSERT INTO  Music(musicId, artist, releaseDate, musicGenre, albumNam) values ();
INSERT INTO  Music(musicId, artist, releaseDate, musicGenre, albumNam) values ();
INSERT INTO  Music(musicId, artist, releaseDate, musicGenre, albumNam) values ();
INSERT INTO  Music(musicId, artist, releaseDate, musicGenre, albumNam) values ();
INSERT INTO  Music(musicId, artist, releaseDate, musicGenre, albumNam) values ();

-- 4. inserting into YouTube
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ();
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ();
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ();
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ();
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ();
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ();
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ();
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ();
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ();
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ();

-- 5. inserting into Reading
INSERT INTO  Reading(bookId, bookGenre, bookName, currentChapter) values ();
INSERT INTO  Reading(bookId, bookGenre, bookName, currentChapter) values ();
INSERT INTO  Reading(bookId, bookGenre, bookName, currentChapter) values ();
INSERT INTO  Reading(bookId, bookGenre, bookName, currentChapter) values ();
INSERT INTO  Reading(bookId, bookGenre, bookName, currentChapter) values ();
INSERT INTO  Reading(bookId, bookGenre, bookName, currentChapter) values ();
INSERT INTO  Reading(bookId, bookGenre, bookName, currentChapter) values ();
INSERT INTO  Reading(bookId, bookGenre, bookName, currentChapter) values ();
INSERT INTO  Reading(bookId, bookGenre, bookName, currentChapter) values ();
INSERT INTO  Reading(bookId, bookGenre, bookName, currentChapter) values ();


-- THIS IS FOR THE MOVIE / TV SERIES TBALE
	-- DROPPED--
    -- PAUSED-- 
    -- REWATCHED--
    -- TO WATCH--
    -- COMPLETED--
    -- WATCHING--
    -- RECOMMENDING---
    
    
-- THIS IS FOR THE READING TABLE
	-- DROPPED--
	-- PAUSED-- 
	-- COMPLETED--
	-- WANT TO READ --
	-- READ --
	-- CURRENTLY READING --
	-- RECOMMENDING--
    