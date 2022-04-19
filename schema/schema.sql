CREATE TABLE authors (
                         id serial PRIMARY KEY,
                         first_name CHAR(50) NOT NULL,
                         last_name CHAR(50) NOT NULL,
);

CREATE TABLE games (
                         id serial PRIMARY KEY,
                         genre_id CHAR(50) NOT NULL,
                         author_id CHAR(50) NOT NULL,
                         source_id CHAR(50) NOT NULL,
                         label_id CHAR(50) NOT NULL,
                         archived,
                         publish_date,
                         multiplayer,
                         last_played_at,

);
