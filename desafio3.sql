SELECT usr.username AS usuario,
 COUNT(h.song_id) AS qt_de_musicas_ouvidas,
 ROUND(SUM(s.length / 60),2) AS total_minutos
 FROM SpotifyClone.history AS h
 INNER JOIN SpotifyClone.users AS usr ON h.users_id = usr.users_id
 INNER JOIN SpotifyClone.songs AS s ON h.song_id = s.song_id
 GROUP BY username
 ORDER BY username;