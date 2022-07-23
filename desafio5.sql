SELECT 
    C.cancao, COUNT(H.usuario_id) AS reproducoes
FROM
    SpotifyClone.cancoes AS C
    INNER JOIN SpotifyClone.historico AS H ON H.cancao_id = C.id
GROUP BY H.cancao_id
ORDER BY reproducoes DESC, C.cancao
LIMIT 2;
