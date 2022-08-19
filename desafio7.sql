SELECT art.artist_name AS artista, alb.album_name AS album, COUNT(f.artist_id) AS seguidores 
FROM SpotifyClone.artist AS art
INNER JOIN SpotifyClone.albums AS alb ON art.artist_id = alb.artist_id
INNER JOIN  SpotifyClone.following AS f ON f.artist_id = art.artist_id
GROUP BY art.artist_id, album_id
ORDER BY seguidores DESC, artista, album ;