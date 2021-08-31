-- QUARY STATEMENTS --

USE lifeOrganiser;

-- Basic
SELECT * FROM Movies;
SELECT * FROM TVSeries ;
SELECT * FROM Music;
SELECT * FROM YouTube;
SELECT * FROM Reading ;

-- Intermediate Features
-- joins, groupbys, functions

-- 1.  I want to add music that I listen to from youtube to my spotify playlist, that have the same genre, which will make it easier to add to a playlist
-- because I like to sort music by their genre's when adding to playlist
-- PROBLEM : THE SELECT INTO newtable was not working for me, so I had to use this method to create another table for the playlist
CREATE TABLE PLAYLIST AS
SELECT youtubeGenre, musicGenre, channelName
FROM YouTube 
JOIN Music 
WHERE YouTube.youtubeGenre = Music.musicGenre
GROUP BY channelName, musicGenre, youtubeGenre;
SELECT * FROM PLAYLIST;


-- Advanced Feature
-- a subquery, a view
