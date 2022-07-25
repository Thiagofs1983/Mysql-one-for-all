SELECT 
    C.cancao AS nome, COUNT(H.usuario_id) AS reproducoes
FROM
    SpotifyClone.cancoes AS C
        INNER JOIN
    SpotifyClone.historico AS H ON C.id = H.cancao_id
        INNER JOIN
    SpotifyClone.usuarios AS U ON H.usuario_id = U.id
WHERE
    U.plano_id IN (1 , 4)
GROUP BY nome
ORDER BY nome;
