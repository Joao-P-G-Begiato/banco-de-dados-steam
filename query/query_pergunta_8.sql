/*quais foram as empresas que desenvolveram mais jogos?*/

SELECT 
developer, COUNT(app_id) as quantidade
FROM
    steam_developers

GROUP BY developer

ORDER BY COUNT(app_id) desc;

/*quais foram as empresas que publicaram mais jogos?*/

SELECT 
    publisher, COUNT(app_id) as quantidade
FROM
    steam_developers
    
GROUP BY publisher

ORDER BY COUNT(app_id) desc;
