-- CREATED BY : Erifeoluwa Jamgbadi --

-- Creating the database called life organiser --
CREATE DATABASE lifeOrganiser;

-- CREATING TABLES --

-- THESE TABLES ARE HOBBIES THAT I AM INTERESTED IN -- 

CREATE TABLE Movies (
	movieId BIGINT(50) NOT NULL,
    genre VARCHAR(100),
    langauge VARCHAR(20) NOT NULL,
    whereToWatch VARCHAR(20)
);

CREATE TABLE TVSeries(
	movieId BIGINT(50) NOT NULL,
    Moviegenre VARCHAR(100),
    langauge VARCHAR(20) NOT NULL,
    currentEpisode INTEGER(100)
);

CREATE TABLE Music (
	musicId BIGINT(50) NOT NULL,
    artist VARCHAR(100),
    releaseDate DATE,
    musicGenre VARCHAR(100),
    album VARCHAR(100)
);

CREATE TABLE YouTube(
	nameOfYouTubers VARCHAR(100) NOT NULL,
    youtubeGenre VARCHAR(100),
    channelName VARCHAR(300)
);

CREATE TABLE Coding(
	
);

CREATE TABLE Reading(
	
);



-- INSERTING DATA INTO TABLES--