/*qual a média do valor dos jogos por genero?*/

SELECT 
    steam_main.genres,
    SUM(CAST(steam_developers.price_usdt AS DECIMAL)) DIV COUNT(CAST(steam_developers.price_usdt AS DECIMAL)) AS media
FROM
    steam_developers
        INNER JOIN
    steam_main ON steam_main.app_id = steam_developers.app_id
GROUP BY steam_main.genres
order by media desc