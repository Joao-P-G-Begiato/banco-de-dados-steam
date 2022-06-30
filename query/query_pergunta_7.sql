/*qual a média do valor dos jogos por genero?*/

SELECT 
    steam_main.genres,
    steam_developers.price_usdt,
    SUM(CAST(steam_developers.price_usdt AS DECIMAL)) as soma_valor,
    COUNT(CAST(steam_developers.price_usdt AS DECIMAL)) as total_genero,
    SUM(CAST(steam_developers.price_usdt AS DECIMAL)) DIV COUNT(CAST(steam_developers.price_usdt AS DECIMAL)) AS media
FROM
    steam_developers
        INNER JOIN
    steam_main ON steam_main.app_id = steam_developers.app_id
GROUP BY steam_main.genres