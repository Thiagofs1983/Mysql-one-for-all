SELECT 
    A.artista, AL.album, COUNT(F.usuario_id) AS seguidores
FROM
    SpotifyClone.artistas AS A
        LEFT JOIN
    SpotifyClone.albuns AS AL ON A.id = AL.artista_id
        LEFT JOIN
    SpotifyClone.favoritos AS F ON F.artista_id = A.id
GROUP BY artista , album
ORDER BY seguidores DESC , artista, album;
