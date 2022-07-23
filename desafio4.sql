SELECT 
    U.usuario,
    IF(MAX(YEAR(H.data_reproducao)) = '2021',
        'Usuário ativo',
        'Usuário inativo') AS condicao_usuario
FROM
    SpotifyClone.usuarios AS U
        INNER JOIN
    SpotifyClone.historico AS H ON U.id = H.usuario_id
GROUP BY U.usuario
ORDER BY U.usuario;
