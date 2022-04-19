CREATE TABLE authors (
                         id serial PRIMARY KEY,
                         first_name CHAR(50) NOT NULL,
                         last_name CHAR(50) NOT NULL,
);

CREATE TABLE games (
                         id serial PRIMARY KEY,
                         genre_id INT NOT NULL,
                         author_id INT NOT NULL,
                         source_id INT NOT NULL,
                         label_id INT NOT NULL,
                         archived BOOLEAN NOT NULL,
                         publish_date DATE NOT NULL,
                         multiplayer INT NOT NULL,
                         last_played_at DATE NOT NULL,
                         CONSTRAINT fk_genres FOREIGN KEY(genre_id) REFERENCES genres(id),
                         CONSTRAINT fk_authors FOREIGN KEY(author_id) REFERENCES genres(id),
                         CONSTRAINT fk_source FOREIGN KEY(source_id) REFERENCES source(id),
                         CONSTRAINT fk_label FOREIGN KEY(label_id) REFERENCES labels(id),
);
