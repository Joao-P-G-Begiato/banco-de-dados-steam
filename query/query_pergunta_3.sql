# pergunta: qual ranking de genêros por tempo médio de jogo?
SELECT 
    steam_main.genres, steam_ux.average_playtime
FROM
    steam_main
        INNER JOIN
    steam_ux ON steam_ux.app_id = steam_main.app_id
GROUP BY steam_main.genres
ORDER BY CAST(steam_main.genres AS DECIMAL) DESC