SELECT 
    U.usuario,
    COUNT(H.cancao_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(C.duracao_segundos) / 60, 2) AS total_minutos
FROM
    SpotifyClone.usuarios AS U
        INNER JOIN
    SpotifyClone.historico AS H ON U.id = H.usuario_id
        INNER JOIN
    SpotifyClone.cancoes AS C ON C.id = H.cancao_id
GROUP BY usuario_id
ORDER BY U.usuario;