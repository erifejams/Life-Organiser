-- QUARY STATEMENTS --

USE lifeOrganiser;

-- 1. BASIC
-- A feature to find out all the things the user has watched, reading or listened to
SELECT * FROM Movies;
SELECT * FROM TVSeries;
SELECT * FROM Music;
SELECT * FROM YouTube;
SELECT * FROM Reading;


-- 2. To Find my favourite genre depending on what type of movies I watch
-- A feature to analysis what type of movies the user watches, so if it was ever developed recommendations can be made
SELECT movieGenre, COUNT(movieGenre)
FROM Movies
GROUP BY movieGenre;


-- 3. A feature, that if I wanted to develop myself by watching youtube tutorials, I can search up from my subscription list for channels, that are in the users subscription list
SELECT youtubeGenre, channelName
FROM YouTube
WHERE youtubeGenre = 'Technical Courses';


-- INTERMEDIATE Features
-- joins, groupbys, functions

-- 4.  I want to add music that I listen to from youtube to my spotify playlist, that have the same genre, which will make it easier to add to a playlist
-- because I like to sort music by their genre's when adding to playlist
-- PROBLEM : THE SELECT INTO newtable was not working for me, so I had to use this method to create another table for the playlist
CREATE TABLE PLAYLIST AS
SELECT youtubeGenre, musicGenre, channelName
FROM YouTube 
JOIN Music 
WHERE YouTube.youtubeGenre = Music.musicGenre
GROUP BY channelName, musicGenre, youtubeGenre;

SELECT * FROM PLAYLIST;


-- 5. This is so the user will be able to update the episode of the tv series, that they're on
UPDATE TVSeries
SET currentEpisode = 'S1E2'
WHERE tvSeriesId = 9;

SELECT tvSeriesId, tvSeriesName, tvSeriesgenre, tvSeriesReleaseDate, tvSerieslangauge, currentEpisode
FROM TVSeries
WHERE tvSeriesName = 'Blood & Water'
GROUP BY tvSeriesName;



-- ADVANCE Feature
-- a subquery, a view

-- 6. Depending on the users mood, it will play songs that the user can dance to, so i like to hear afrobeat when I'm happy because it makes me more happy 
DROP VIEW DanceMood CASCADE; -- used for when i made a mistake and want to drop teh table. it not needed if you don't need to delete tables

CREATE VIEW DanceMood
AS
SELECT musicId, artist, nameOfSong, musicGenre
FROM Music
WHERE musicGenre = 'Afrobeat';

SELECT * FROM DanceMood;