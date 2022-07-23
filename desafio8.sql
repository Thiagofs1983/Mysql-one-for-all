SELECT 
    A.artista, AL.album
FROM
    SpotifyClone.artistas AS A
    RIGHT JOIN SpotifyClone.albuns AS AL ON AL.artista_id = A.id
    WHERE A.artista = 'Walter Phoenix';
    