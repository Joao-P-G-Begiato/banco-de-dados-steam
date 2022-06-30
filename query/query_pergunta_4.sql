# pergunta Qual a melhor desenvolvedora de jogos a partir das avaliações 

SELECT 
    steam_developers.developer, SUM(CAST(steam_ux.positive_ratings as DECIMAL))
FROM
    steam_main
        INNER JOIN
    steam_developers ON steam_main.app_id = steam_developers.app_id
        INNER JOIN
    steam_ux ON steam_main.app_id = steam_ux.app_id
GROUP BY steam_developers.developer
ORDER BY SUM(CAST(steam_ux.positive_ratings as DECIMAL)) DESC;

# pergunta Qual a melhor desenvolvedora de jogos a partir do tempo médio de jogo

SELECT 
    steam_developers.developer, SUM(steam_ux.average_playtime)
FROM
    steam_main
        INNER JOIN
    steam_developers ON steam_main.app_id = steam_developers.app_id
        INNER JOIN
    steam_ux ON steam_main.app_id = steam_ux.app_id
GROUP BY steam_developers.developer
ORDER BY SUM(steam_ux.average_playtime) DESC
LIMIT 10