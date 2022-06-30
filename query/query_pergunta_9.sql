select LEFT(realease_date, 4) as realease_year,
count(steam_main.app_id) as quantidade
from steam_main
group by realease_year
order by quantidade desc