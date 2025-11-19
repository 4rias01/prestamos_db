-- Tipo de dato compuesto fullname
CREATE TYPE fullName AS (
    first_name VARCHAR(50),
    last_name VARCHAR(50)
);

-- Tabla de usuarios
CREATE TABLE tuser (
    id_user SERIAL PRIMARY KEY,
    username fullName NOT NULL,
    dob TIMESTAMP NOT NULL,
    create_at TIMESTAMP NOT NULL DEFAULT NOW(),
    update_at TIMESTAMP NOT NULL DEFAULT NOW(),
    active BOOLEAN NOT NULL DEFAULT TRUE
);

-- Tabla de correos electrónicos de usuarios
CREATE TABLE user_email (
    id_email SERIAL PRIMARY KEY,
    id_user INT NOT NULL REFERENCES tuser(id_user) ON DELETE CASCADE,
    email VARCHAR(100) NOT NULL,
    UNIQUE(id_user, email),
);

-- Tabla de autores de los libros
CREATE TABLE author (
    id_author SERIAL PRIMARY KEY,
    author_name fullName NOT NULL
);

-- Tabla de libros
CREATE TABLE book (
    id_book SERIAL PRIMARY KEY,
    name_book VARCHAR(200) NOT NULL,
    sinopsis TEXT NOT NULL,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    published_date TIMESTAMP NOT NULL,
    create_at TIMESTAMP NOT NULL DEFAULT NOW(),
    update_at TIMESTAMP NOT NULL DEFAULT NOW(),
    available BOOLEAN NOT NULL DEFAULT TRUE
);

-- Tabla muchos a muchos entre autores y libros
CREATE TABLE author_book (
    id_author INT NOT NULL REFERENCES author(id_author) ON DELETE CASCADE,
    id_book INT NOT NULL REFERENCES book(id_book) ON DELETE CASCADE,
    is_main BOOLEAN NOT NULL DEFAULT FALSE,
    PRIMARY KEY (id_author, id_book)
);

-- Tipo de dato enumerado para el estado del préstamo
CREATE TYPE borrow_status AS ENUM ('borrowed', 'returned', 'overdue');

-- Tabla de préstamos de libros
CREATE TABLE borrow (
    id_borrow SERIAL PRIMARY KEY,
    id_user INT NOT NULL REFERENCES tuser(id_user) ON DELETE CASCADE,
    id_book INT NOT NULL REFERENCES book(id_book) ON DELETE CASCADE,
    borrow_date TIMESTAMP NOT NULL DEFAULT NOW(),
    due_date TIMESTAMP NOT NULL DEFAULT (NOW() + INTERVAL '15 days'),
    b_status borrow_status NOT NULL DEFAULT 'borrowed',
    UNIQUE(id_user, id_book, borrow_date)
);