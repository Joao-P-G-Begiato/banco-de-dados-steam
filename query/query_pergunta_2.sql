SELECT 
    steam_main.app_name, steam_ux.negative_ratings
FROM
    steam_ux
        INNER JOIN
    steam_main ON steam_ux.app_id = steam_main.app_id
        
order by CAST(steam_ux.negative_ratings as decimal) desc
