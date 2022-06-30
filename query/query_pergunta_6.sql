-- TOP 10 Jogos com mais tempo médio de jogo
-- SIMONE LUIZ DA SILVA

SELECT
    main.app_name as "Nome",
    ux.average_playtime AS "Tempo de Jogo"
FROM
    steam_ux ux
INNER JOIN 
	steam_main main
ON 
	ux.app_id = main.app_id
ORDER BY 
	 CAST(ux.average_playtime AS SIGNED integer) DESC,
     main.app_name ASC
LIMIT 10;