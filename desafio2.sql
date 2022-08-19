SELECT COUNT(s.song_id) AS cancoes, 
  COUNT(DISTINCT a.artist_id) AS artistas,
   COUNT(DISTINCT s.album_id) AS albuns 
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.albums AS a
ON s.album_id = a.album_id; 