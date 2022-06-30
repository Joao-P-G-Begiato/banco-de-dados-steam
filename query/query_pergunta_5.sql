-- TOP 10 Jogos com mais conquistas
-- SIMONE LUIZ DA SILVA

SELECT
    main.app_name as "Nome",
    ux.achievements AS "Conquistas" 
FROM
    steam_ux ux
INNER JOIN 
	steam_main main
ON 
	ux.app_id = main.app_id
ORDER BY 
	 CAST(ux.achievements AS SIGNED integer) DESC,
     main.app_name ASC
LIMIT 10;