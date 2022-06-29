create database steam ;

use steam;

CREATE TABLE steam_main (
    app_id INT,
    app_name VARCHAR(255),
    realease_date VARCHAR(12),
    required_age VARCHAR(3),
    categories VARCHAR(255),
    genres VARCHAR(255),
    PRIMARY KEY (app_id)
);

CREATE TABLE steam_ux (
    app_id INT,
    achievements VARCHAR(5),
    positive_ratings VARCHAR(7),
    negative_ratings VARCHAR(7),
    average_playtime VARCHAR(7),
    FOREIGN KEY (app_id)
        REFERENCES steam_main (app_id)
);

CREATE TABLE steam_developers (
    app_id INT,
    developer VARCHAR(255),
    publisher VARCHAR(255),
    owners VARCHAR(22),
    price_usdt VARCHAR(10),
    price_brl VARCHAR(10),
    FOREIGN KEY (app_id)
        REFERENCES steam_main (app_id)
)