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
	tvSeriesName VARCHAR(100) NOT NULL,
    tvSeriesgenre VARCHAR(100),
    tvSeriesReleaseDate DATE,
    tvSerieslangauge VARCHAR(20) NOT NULL,
    currentEpisode VARCHAR(20), -- SHOULD I DO DEPENDING ON THE STATUS OF THE USERS E.G COMPLETED, PAUSED?
    
    CONSTRAINT TVSeries_pk PRIMARY KEY (tvSeriesId)
);

CREATE TABLE Music (
	musicId INTEGER NOT NULL,
    artist VARCHAR(100) NOT NULL,
    nameOfSong VARCHAR(100) NOT NULL,
    languageOfSong VARCHAR(100),
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
    author VARCHAR(100) NOT NULL,
    
    CONSTRAINT Reading_pk PRIMARY KEY (bookId)
);

-- I'LL ADD THE CODING TABLE IF I HAVE TIME
/*  CREATE TABLE Coding(

);
 */

-- I'LL ADD THE Podcast TABLE IF I HAVE TIME
/*  CREATE TABLE Podcast(

);
 */

-- INSERTING DATA INTO TABLES--
-- I DID THESE VALUES BASED ON MY ACTUAL DAILY LIFE
-- 1. inserting into Movies
INSERT INTO  Movies(movieId, movieName, movieGenre, movieReleaseDate, tvSerieslangauge, whereToWatch) values (1, 'Lion Heart', 'Drama', STR_TO_DATE('2018', '%Y'), 'English', 'Netflix');
INSERT INTO  Movies(movieId, movieName, movieGenre, movieReleaseDate, tvSerieslangauge, whereToWatch) values (2, 'Train To Busan', 'Thriller', STR_TO_DATE('2016', '%Y'), 'Korean', 'DramaCool');
INSERT INTO  Movies(movieId, movieName, movieGenre, movieReleaseDate, tvSerieslangauge, whereToWatch) values (3, 'Oceans 8', 'Action', STR_TO_DATE('2018', '%Y'), 'English', 'Netflix');
INSERT INTO  Movies(movieId, movieName, movieGenre, movieReleaseDate, tvSerieslangauge, whereToWatch) values (46, 'Annie(2014)', 'Musical', STR_TO_DATE('2014', '%Y'), 'Engish', 'Netflix');
INSERT INTO  Movies(movieId, movieName, movieGenre, movieReleaseDate, tvSerieslangauge, whereToWatch) values (30, 'A Werewolf Boy', 'Fantasy', STR_TO_DATE('2012', '%Y'), 'Korean', 'DramaCool');
INSERT INTO  Movies(movieId, movieName, movieGenre, movieReleaseDate, tvSerieslangauge, whereToWatch) values (4, 'Miricle in Cell No 7', 'Social Issue', STR_TO_DATE('2019', '%Y'), 'Turkish', 'Netflix');
INSERT INTO  Movies(movieId, movieName, movieGenre, movieReleaseDate, tvSerieslangauge, whereToWatch) values (8, 'IF BEALE STREET COULD TALK', 'Drama', STR_TO_DATE('2018', '%Y'), 'English', 'Hulu');
INSERT INTO  Movies(movieId, movieName, movieGenre, movieReleaseDate, tvSerieslangauge, whereToWatch) values (9, 'A Fall from Grace', 'Thriller', STR_TO_DATE('2020', '%Y'), 'English', 'Netflix');
INSERT INTO  Movies(movieId, movieName, movieGenre, movieReleaseDate, tvSerieslangauge, whereToWatch) values (6, 'Wonder', 'Drama', STR_TO_DATE('2017', '%Y'), 'English', 'Netflix');
-- INSERT INTO  Movies(movieId, movieName, movieGenre, movieReleaseDate, tvSerieslangauge, whereToWatch) values (5, '', '', STR_TO_DATE('', '%Y'), '', ''); --

-- 2. inserting into TVSeries
INSERT INTO  TVSeries(tvSeriesId, tvSeriesName, tvSeriesgenre, tvSeriesReleaseDate, tvSerieslangauge, currentEpisode) values ('0', 'Sister Sister', 'American Sitcom', STR_TO_DATE('01,04,1994', '%d,%m,%Y'), 'English', 'S2E7');
INSERT INTO  TVSeries(tvSeriesId, tvSeriesName, tvSeriesgenre, tvSeriesReleaseDate, tvSerieslangauge, currentEpisode) values ('3', 'Nevertheless', 'Korean Drama', STR_TO_DATE('19,06,2021', '%d,%m,%Y'), 'Korean', 'S1E10');
INSERT INTO  TVSeries(tvSeriesId, tvSeriesName, tvSeriesgenre, tvSeriesReleaseDate, tvSerieslangauge, currentEpisode) values ('4', 'Real House Wives of Atlanta', 'Reality TV', STR_TO_DATE('07,10,2008', '%d,%m,%Y'), 'English', 'S13E21');
INSERT INTO  TVSeries(tvSeriesId, tvSeriesName, tvSeriesgenre, tvSeriesReleaseDate, tvSerieslangauge, currentEpisode) values ('5', 'Family Reunion', 'Family', STR_TO_DATE('10,07,2019', '%d,%m,%Y'), 'English', 'S1E6');
INSERT INTO  TVSeries(tvSeriesId, tvSeriesName, tvSeriesgenre, tvSeriesReleaseDate, tvSerieslangauge, currentEpisode) values ('11', 'Jenifas Diary', 'Nigerian Comedy ',  STR_TO_DATE('15,04,2015', '%d,%m,%Y'), 'English', 'S24E8');
INSERT INTO  TVSeries(tvSeriesId, tvSeriesName, tvSeriesgenre, tvSeriesReleaseDate, tvSerieslangauge, currentEpisode) values ('6', 'The Fosters', 'Family', STR_TO_DATE('03,06,2013', '%d,%m,%Y'), 'English', 'S2E4');
INSERT INTO  TVSeries(tvSeriesId, tvSeriesName, tvSeriesgenre, tvSeriesReleaseDate, tvSerieslangauge, currentEpisode) values ('7', 'Grey Anotomy', 'Medical', STR_TO_DATE('27,03,2005', '%d,%m,%Y'), 'English', 'S1E1');
INSERT INTO  TVSeries(tvSeriesId, tvSeriesName, tvSeriesgenre, tvSeriesReleaseDate, tvSerieslangauge, currentEpisode) values ('8', 'Do you like Brahms?', 'Korean Drama', STR_TO_DATE('21,08,2020', '%d,%m,%Y'), 'Korean', 'S1E16');
INSERT INTO  TVSeries(tvSeriesId, tvSeriesName, tvSeriesgenre, tvSeriesReleaseDate, tvSerieslangauge, currentEpisode) values ('9', 'Blood & Water', 'South African Crime', STR_TO_DATE('20,05,2020', '%d,%m,%Y'), 'English', 'S1E1');
INSERT INTO  TVSeries(tvSeriesId, tvSeriesName, tvSeriesgenre, tvSeriesReleaseDate, tvSerieslangauge, currentEpisode) values ('12', 'Meet the Adebanjos', 'British African Sitacom', STR_TO_DATE('06,04,2012' , '%d,%m,%Y'),  'English', 'S1E1');
INSERT INTO  TVSeries(tvSeriesId, tvSeriesName, tvSeriesgenre, tvSeriesReleaseDate, tvSerieslangauge, currentEpisode) values ('10', 'The Princess Weiyoung', 'Chinese Drama', STR_TO_DATE('11,11,2016', '%d,%m,%Y'), 'Chinese', 'S1E54');
-- INSERT INTO  TVSeries(tvSeriesId, tvSeriesName, tvSeriesgenre, tvSeriesReleaseDate, tvSerieslangauge, currentEpisode) values ('11', '', '', '', ''); --

-- 3. inserting into Music
INSERT INTO  Music(musicId, artist, nameOfSong, languageOfSong, releaseDate, musicGenre, albumName) values ('1', 'Ladipoe ft simi', 'Know You', 'Engish', STR_TO_DATE('2020', '%Y'), 'Afrobeat', 'Know You');
INSERT INTO  Music(musicId, artist, nameOfSong, languageOfSong, releaseDate, musicGenre, albumName) values ('2', 'Vegedream', 'Ramenez la coupe a la maison', 'French', STR_TO_DATE('2018', '%Y'), ' Hip-Hop', 'Marchand de sable');
INSERT INTO  Music(musicId, artist, nameOfSong, languageOfSong, releaseDate, musicGenre, albumName) values ('3', 'BTS', 'Black Swan', 'Korean', STR_TO_DATE('2020', '%Y'), 'Kpop', 'MAP OF THE SOUL: 7');
INSERT INTO  Music(musicId, artist, nameOfSong, languageOfSong, releaseDate, musicGenre, albumName) values ('6', 'King Promise', 'Sisa', 'English', STR_TO_DATE('2019', '%Y'), 'Afrobeat', 'Sisa');
INSERT INTO  Music(musicId, artist, nameOfSong, languageOfSong, releaseDate, musicGenre, albumName) values ('8', 'Fall Out Boy ft RM', 'Champion - Remix', 'English', STR_TO_DATE('2020', '%Y'), 'Alternative', 'Champion(Remix)');
INSERT INTO  Music(musicId, artist, nameOfSong, languageOfSong, releaseDate, musicGenre, albumName) values ('0', 'Tiwa Savage', 'Koroba', 'English', STR_TO_DATE('2020', '%Y'), 'Afrobeat', 'Celia');
INSERT INTO  Music(musicId, artist, nameOfSong, languageOfSong, releaseDate, musicGenre, albumName) values ('5', 'Indila', 'Derniere danse', 'French', STR_TO_DATE('2014', '%Y'), 'Pop', 'Mini World');
INSERT INTO  Music(musicId, artist, nameOfSong, languageOfSong, releaseDate, musicGenre, albumName) values ('4', 'Hwa Sa', 'Maria', 'Korean', STR_TO_DATE('2020', '%Y'), 'Kpop', 'Maria');
INSERT INTO  Music(musicId, artist, nameOfSong, languageOfSong, releaseDate, musicGenre, albumName) values ('9', 'Sauti Sol', 'Suzanna', 'English', STR_TO_DATE('2020', '%Y'), 'Afropop', 'Midnight Train');
-- INSERT INTO  Music(musicId, artist, nameOfSong, languageOfSong, releaseDate, musicGenre, albumName) values ('37', '', '', '', STR_TO_DATE('', '%Y'), '', ''); --

-- 4. inserting into YouTube
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ('Nella Rose', 'Entertainment', 'Nella Rose');
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ('Amina', 'Entertainment', 'This is Amina' );
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ('Murad Merali', 'Reviews', 'Murad Merali');
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ('HYBE LABELS', 'Music', 'HYBE LABELS');
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ('Chizi Duru', 'Lifesyle', 'Chizi Duru');
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ('RG Entertainment', 'Hindu Movies', 'RG Entertainment');
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ('Adeola Patronne', 'Entertainment', 'Adeola Patronne');
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ('Demi', 'Entertainment', 'Miss Demz');
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ('Chloe Ting', 'Fitness', 'Chloe Ting');
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ('Footasylum', 'Entertainment', 'Footasylum');
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ('Patricia Bright', 'Lifesyle', 'Patricia Bright');
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ('freeCodeCamp', 'Technical Courses', 'freeCodeCamp.org');
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ('Sola Patronne', 'Entertainment', 'Sola Patronne');
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ('ehis ilozobhie', 'Entertainment', 'ehis');
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ('MRLondon', 'Fitness', 'MRLondon');
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ('Mariam Musa', 'Fashion, Beauty and Lifestyle', 'Mariam Musa');
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ('Bukola', 'Programming', 'Bukola');
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ('Paternity Court', 'Law', 'Paternity Court');
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ('GRM Daily', 'Music', 'GRM Daily');
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ('Viki Global TV', 'Asian Dramas', 'Viki Global TV');
INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ('Rhea Ellen', 'Comedy', 'Rhea Ellen');
--  INSERT INTO  YouTube(nameOfYouTubers, youtubeGenre, channelName) values ('', '', '');--


-- 5. inserting into Reading
INSERT INTO  Reading(bookId, bookGenre, bookName, author) values ('1', 'Romance', 'The Time Traveler Wife', 'Audrey Niffenegger');
INSERT INTO  Reading(bookId, bookGenre, bookName, author) values ('44', 'Fantasy', 'A Court of Thorns and Roses', 'Sarah J.Maas');
INSERT INTO  Reading(bookId, bookGenre, bookName, author) values ('53', ' Manhwa', 'The Villioness is a Marionette', 'Han Yi Rim');
INSERT INTO  Reading(bookId, bookGenre, bookName, author) values ('2', 'Young Adult', 'The Perks of Being a Wallflower', 'Stephen Chbosky');
INSERT INTO  Reading(bookId, bookGenre, bookName, author) values ('4', 'Fantasy', 'City of Bones', 'Cassandra Clare');
INSERT INTO  Reading(bookId, bookGenre, bookName, author) values ('6', 'Romance', 'November 9', 'Colleen Hoover');
INSERT INTO  Reading(bookId, bookGenre, bookName, author) values ('7', 'Anime', 'Haikyuu', 'Haruichi Furudate');
INSERT INTO  Reading(bookId, bookGenre, bookName, author) values ('8', 'Triller', 'Gone Girl', 'Gillian Flynn');
INSERT INTO  Reading(bookId, bookGenre, bookName, author) values ('9', 'Anime', 'Maid Sama!', 'Hiro Fujiwara');
INSERT INTO  Reading(bookId, bookGenre, bookName, author) values ('04', 'Young Adult', 'The Hate U Give', 'Angie Thomas');
INSERT INTO  Reading(bookId, bookGenre, bookName, author) values ('40', 'Young Adult', 'Children of Blood and Bone', 'Tomi Adeyemi');
INSERT INTO  Reading(bookId, bookGenre, bookName, author) values ('21', 'Manhwa', 'Shadow Queen', 'Hayol');
--  INSERT INTO  YouTube(bookId, bookGenre, bookName, author) values ('', '', '', '');--

-- THIS IS FOR THE MOVIE / TV SERIES TBALE
-- Also want to check if it is the first episode or last episode
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
    