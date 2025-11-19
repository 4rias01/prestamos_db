-- ========================================
-- INSERTS: tuser (10)
-- ========================================

INSERT INTO tuser (username, dob, create_at, update_at, active) VALUES
(ROW('Juan','Pérez'), '1990-05-12', NOW(), NOW(), TRUE),
(ROW('María','Lozano'), '1985-11-23', NOW(), NOW(), TRUE),
(ROW('Carlos','Ramírez'), '1992-07-03', NOW(), NOW(), TRUE),
(ROW('Ana','Torres'), '1998-02-17', NOW(), NOW(), TRUE),
(ROW('Luis','Martínez'), '1980-09-29', NOW(), NOW(), TRUE),
(ROW('Sofía','López'), '1995-01-15', NOW(), NOW(), TRUE),
(ROW('Miguel','Díaz'), '1993-03-08', NOW(), NOW(), TRUE),
(ROW('Elena','Suárez'), '1997-12-21', NOW(), NOW(), TRUE),
(ROW('Jorge','Herrera'), '1988-06-10', NOW(), NOW(), TRUE),
(ROW('Lucía','Castro'), '1999-04-04', NOW(), NOW(), TRUE);

-- ========================================
-- INSERTS: user_email (10)
-- ========================================

INSERT INTO user_email (id_user, email) VALUES
(1, 'juan.perez@example.com'),
(2, 'maria.lozano@example.com'),
(3, 'carlos.ramirez@example.com'),
(4, 'ana.torres@example.com'),
(5, 'luis.martinez@example.com'),
(6, 'sofia.lopez@example.com'),
(7, 'miguel.diaz@example.com'),
(8, 'elena.suarez@example.com'),
(9, 'jorge.herrera@example.com'),
(10,'lucia.castro@example.com');

-- ========================================
-- INSERTS: author (10)
-- ========================================

INSERT INTO author (author_name) VALUES
(ROW('Gabriel','García Márquez')),
(ROW('Isabel','Allende')),
(ROW('Julio','Cortázar')),
(ROW('Mario','Vargas Llosa')),
(ROW('Jorge Luis','Borges')),
(ROW('Carlos','Fuentes')),
(ROW('Elena','Poniatowska')),
(ROW('Juan','Rulfo')),
(ROW('Laura','Esquivel')),
(ROW('Ernesto','Sábato'));

-- ========================================
-- INSERTS: book (10)
-- ========================================

INSERT INTO book (name_book, sinopsis, isbn, published_date) VALUES
('Cien Años de Soledad', 'Novela clásica del realismo mágico.', 'ISBN0001', '1967-05-30'),
('La Casa de los Espíritus', 'Saga familiar con tintes mágicos.', 'ISBN0002', '1982-01-01'),
('Rayuela', 'Novela experimental e innovadora.', '1963-06-28', 'ISBN0003'),
('La Ciudad y los Perros', 'Crítica social en ambiente militar.', 'ISBN0004', '1963-01-01'),
('El Aleph', 'Colección de cuentos emblemáticos.', 'ISBN0005', '1949-01-01'),
('La Muerte de Artemio Cruz', 'Historia introspectiva sobre el poder.', 'ISBN0006', '1962-01-01'),
('Las Soldaderas', 'Relatos históricos de la Revolución.', 'ISBN0007', '1969-01-01'),
('Pedro Páramo', 'Obra maestra del realismo mágico mexicano.', 'ISBN0008', '1955-01-01'),
('Como Agua para Chocolate', 'Novela romántica con elementos mágicos.', 'ISBN0009', '1989-01-01'),
('El Túnel', 'Novela psicológica argentina.', 'ISBN0010', '1948-01-01');

-- ========================================
-- INSERTS: author_book (10)
-- ========================================

INSERT INTO author_book (id_author, id_book, is_main) VALUES
(1, 1, TRUE),
(2, 2, TRUE),
(3, 3, TRUE),
(4, 4, TRUE),
(5, 5, TRUE),
(6, 6, TRUE),
(7, 7, TRUE),
(8, 8, TRUE),
(9, 9, TRUE),
(10,10, TRUE);

-- ========================================
-- INSERTS: borrow (10)
-- ========================================

INSERT INTO borrow (id_user, id_book, borrow_date, due_date, b_status) VALUES
(1, 1, NOW() - INTERVAL '10 days', NOW() + INTERVAL '5 days', 'borrowed'),
(2, 2, NOW() - INTERVAL '20 days', NOW() - INTERVAL '5 days', 'overdue'),
(3, 3, NOW() - INTERVAL '5 days', NOW() + INTERVAL '10 days', 'borrowed'),
(4, 4, NOW() - INTERVAL '30 days', NOW() - INTERVAL '15 days', 'returned'),
(5, 5, NOW() - INTERVAL '2 days', NOW() + INTERVAL '13 days', 'borrowed'),
(6, 6, NOW() - INTERVAL '16 days', NOW() - INTERVAL '1 days', 'overdue'),
(7, 7, NOW() - INTERVAL '12 days', NOW() + INTERVAL '3 days', 'borrowed'),
(8, 8, NOW() - INTERVAL '40 days', NOW() - INTERVAL '25 days', 'returned'),
(9, 9, NOW() - INTERVAL '1 days', NOW() + INTERVAL '14 days', 'borrowed'),
(10,10, NOW() - INTERVAL '3 days', NOW() + INTERVAL '12 days', 'borrowed'),
(1, 2, NOW() - INTERVAL '50 days', NOW() - INTERVAL '35 days', 'returned'),
(2, 3, NOW() - INTERVAL '7 days', NOW() + INTERVAL '8 days', 'borrowed'),
(3, 4, NOW() - INTERVAL '45 days', NOW() - INTERVAL '30 days', 'returned'),
(4, 5, NOW() - INTERVAL '3 days', NOW() + INTERVAL '12 days', 'borrowed'),
(5, 6, NOW() - INTERVAL '18 days', NOW() - INTERVAL '3 days', 'overdue'),
(6, 7, NOW() - INTERVAL '25 days', NOW() - INTERVAL '10 days', 'returned'),
(7, 8, NOW() - INTERVAL '9 days', NOW() + INTERVAL '6 days', 'borrowed'),
(8, 9, NOW() - INTERVAL '14 days', NOW() + INTERVAL '1 days', 'borrowed'),
(9, 10, NOW() - INTERVAL '22 days', NOW() - INTERVAL '7 days', 'overdue'),
(10, 1, NOW() - INTERVAL '28 days', NOW() - INTERVAL '13 days', 'returned');