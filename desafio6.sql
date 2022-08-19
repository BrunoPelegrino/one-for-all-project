SELECT MIN(pr.plan_price) AS faturamento_minimo,
MAX(pr.plan_price) AS faturamento_maximo,
ROUND(AVG(pr.plan_price),2) AS faturamento_medio,
SUM(pr.plan_price) AS faturamento_total
FROM SpotifyClone.plans AS pr
INNER JOIN SpotifyClone.users AS usr
ON pr.plan_id = usr.plan_id;