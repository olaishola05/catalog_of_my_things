CREATE TABLE item (
    id INT GENERATED ALWAYS AS IDENTITY,
    label_id int,
	genre_id int,
	author_id int,
	archived boolean,
    published_date date,
	FOREIGN KEY (genre_id) REFERENCES genres(id),
	FOREIGN KEY (author_id) REFERENCES author(id),
	FOREIGN KEY (label_id) REFERENCES labels(id)
    PRIMARY KEY (id)
)

CREATE TABLE book (
    id INT GENERATED ALWAYS AS IDENTITY,
    published_date date,
    publisher varchar(255),
    cover_state varchar(255),
    FOREIGN KEY (label_id) REFERENCES labels(id)
    PRIMARY KEY (id)
)

CREATE TABLE label (
    id INT GENERATED ALWAYS AS IDENTITY,
    book_id int,
    title varchar(255),
    color varchar(255),
    FOREIGN KEY (book_id) REFERENCES book(id)
    PRIMARY KEY (id)
)

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

CREATE TABLE music (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100) NOT NULL,
    publish_date DATE NOT NULL,
    archived BOOLEAN
    on_spotify BOOLEAN NOT NULL,
    genre_id INT,
    FOREIGN KEY (genre_id) REFERENCES genres(id)
);

CREATE TABLE genre (
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(100) NOT NULL
);
