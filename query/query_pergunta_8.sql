/*quais foram as empresas que desenvolveram mais jogos?*/

SELECT 
    COUNT(developer), developer
FROM
    steam_developers

GROUP BY developer

ORDER BY COUNT(developer) desc;

/*quais foram as empresas que publicaram mais jogos?*/

SELECT 
    COUNT(publisher), publisher
FROM
    steam_developers
    
GROUP BY publisher

ORDER BY COUNT(publisher) desc;
