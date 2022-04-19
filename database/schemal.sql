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
