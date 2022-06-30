select steam_main.genres,
cast(steam_ux.average_playtime as decimal) as playtime
from steam_main
inner join steam_ux on steam_ux.app_id = steam_main.app_id
group by steam_main.genres
order by playtime desc;