SELECT DISTINCT usr.username AS usuario, IF (MAX(YEAR(h.reproduction_date)) >= 2021, 'Usuário ativo', 'Usuário inativo')
AS status_usuario FROM SpotifyClone.history AS h
INNER JOIN SpotifyClone.users AS usr
ON h.users_id = usr.users_id
group by username
ORDER BY username;