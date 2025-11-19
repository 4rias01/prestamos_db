-- listado de libros que ha prestado el usuario con el id_user 3
SELECT bo.* 
FROM borrow bo
JOIN borrow br ON bo.id_book = br.id_book
WHERE br.id_user = 3;


-- que libtos ha prestado Maria Lozano
SELECT b.*
FROM book b
JOIN borrow br ON b.id_book = br.id_book
JOIN tuser u ON br.id_user = u.id_user
WHERE u.username.first_name = 'María' AND u.username.last_name = 'Lozano';


-- cual fue el último cliente al que se le prestó Rayuela
SELECT u.*
FROM tuser u
JOIN borrow br ON u.id_user = br.id_user
JOIN book b ON br.id_book = b.id_book
WHERE b.name_book = 'Rayuela'
ORDER BY br.borrow_date DESC
LIMIT 1;

-- que libros deben ser entregados entre el 3 y el 10 de diciembre
SELECT b.*
FROM book b
JOIN borrow br ON b.id_book = br.id_book
WHERE br.due_date BETWEEN '2024-12-03' AND '2024-12-10';