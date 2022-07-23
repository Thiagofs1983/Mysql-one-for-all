SELECT 
    MIN(P.valor_plano) AS faturamento_minimo,
    MAX(P.valor_plano) AS faturamento_maximo,
    ROUND(AVG(P.valor_plano), 2) AS faturamento_medio,
    SUM(P.valor_plano * LENGTH(U.plano_id)) AS faturamento_total
FROM
    SpotifyClone.planos AS P
    RIGHT JOIN SpotifyClone.usuarios AS U ON P.id = U.plano_id;
    