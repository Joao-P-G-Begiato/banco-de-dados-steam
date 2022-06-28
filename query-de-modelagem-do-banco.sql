create database banco_de_dados_steam;

use banco_de_dados_steam;

CREATE TABLE steam (
    APP_ID INT,
    APP_name VARCHAR(255),
    Release_date VARCHAR(20),
    English_language VARCHAR(3),
    Developer VARCHAR(255),
    publisher VARCHAR(255),
    Plataforms VARCHAR(22),
    Required_Age VARCHAR(3),
    Categories VARCHAR(255),
    Genres VARCHAR(255),
    Steamspy_tags VARCHAR(255),
    Achievements VARCHAR(6),
    positive_ratings VARCHAR(10),
    negative_ratings VARCHAR(10),
    average_playtime VARCHAR(10),
    median_playtime VARCHAR(10),
    owners VARCHAR(20),
    price_usdt VARCHAR(8),
    price_real VARCHAR(11)
)