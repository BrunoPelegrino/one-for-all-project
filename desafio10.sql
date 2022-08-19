SELECT s.song_name AS nome, COUNT(h.song_id) AS reproducoes
FROM SpotifyClone.songs AS s
INNER JOIN SpotifyClone.history AS h ON s.song_id = h.song_id
INNER JOIN SpotifyClone.users AS usr ON usr.users_id = h.users_id
INNER JOIN SpotifyClone.plans AS p ON p.plan_id = usr.plan_id
WHERE plan_type = 'gratuito' OR plan_type = 'pessoal'
GROUP BY song_name
ORDER BY song_name ASC;

