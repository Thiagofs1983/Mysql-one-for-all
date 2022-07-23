SELECT 
    COUNT(C.cancao) AS cancoes,
    (SELECT 
            COUNT(A.artista)
        FROM
            SpotifyClone.artistas AS A) AS artistas,
    (SELECT 
            COUNT(AL.album)
        FROM
            SpotifyClone.albuns AS AL) AS albuns
FROM
    SpotifyClone.cancoes AS C;