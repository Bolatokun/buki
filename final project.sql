select *
from finalproject.spotify1;

select *
from finalproject.spotify_song_info;

select *
from finalproject.spotify_song_info
order by artists desc
limit 100;
-- Average song popularity by year

select avg(popularity)
from finalproject.spotify_song_info
group by year;

-- Filter the table to show popularity = 60

-- Filter tale to show popularity less than 60
select *
from finalproject.spotify_song_info
where song_id > 60;

-- Filter by release year greater than 50

select *
from finalproject.spotify_song_info
where year = 2010
limit 3;

-- finding song_id released in the year 2010 and limimting it to 3 rows


select *
from finalproject.spotify1
where duration_ms > 300000;

-- finding song_id with duration_ms greater than 300000
select *
from finalproject.spotify1
where loudness < 1
limit 2;

-- finding song_id that ends with s

select song_id
from finalproject.spotify1
where song_id like '%s';

select *
from finalproject.spotify_song_info
where popularity in(20, 30,40,50);

-- Finding the distinct artists

select distinct(artists)
from finalproject.spotify_song_info;

-- finding the minimum song popularity

select min(popularity)
from finalproject.spotify_song_info;

-- Finding the maximum song popularity
Select max(popularity)
from finalproject.spotify_song_info;

-- Joining the two tables together

select *
from finalproject.spotify_song_info as spotifysi
inner join finalproject.spotify1 as spotifysf
on spotifysi.song_id = spotifysf.song_id;


-- Selecting specific coloumn for the joined table.
select spotifysf.artists,spotifysf.name, spotifysi.danceability,spotifysi.key, spotifysi.tempo
from finalproject.spotify_song_info spotifysf
inner join finalproject.spotify1  spotifysi
on spotifysf.song_id = spotifysi.song_id;

