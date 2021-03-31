-- 1. Crear Base de datos posts 
CREATE DATABASE post;

--2. Crear tabla post, con los atributos id, nombre de usuario, fecha de creación, contenido,descripción.
CREATE TABLE post(id SERIAL, nombre VARCHAR(50) NOT NULL, fecha_creacion DATE, contenido VARCHAR, descripción VARCHAR(200));

--3. Insertar 3 post, 2 para el usuario "Pamela" y uno para "Carlos"
INSERT INTO post(nombre, fecha_creacion, contenido, descripción) VALUES('Pamela', '2021-03-30', 'Se puede innovar desde cero a través del pensamiento creativo', 'Pensamiento Productivo');

INSERT INTO post(nombre, fecha_creacion, contenido, descripción) VALUES('Pamela', '2021-03-30', 'Nunca había sido más fácil hacer Marketing en la historia como lo es ahora gracias a las RRSS', 'Marketing Digital');

INSERT INTO post(nombre, fecha_creacion, contenido, descripción) VALUES('Carlos', '2021-03-30', 'El arte de empezar 2.0 es el un libro de lectura obligatoria para emprender', 'Emprendimiento');

--4. Modificar la tabla post, agregando la columna título
ALTER TABLE post ADD titulo VARCHAR(100);

--5. Agregar título a las publicaciones ya ingresadas
UPDATE post SET titulo = 'Innovacion' WHERE id = 1;

UPDATE post SET titulo = 'MK' WHERE id = 2;

UPDATE post SET titulo = 'Guy Kawasaki' WHERE id = 3;

--6. Insertar 2 post para el usuario "Pedro"
INSERT INTO post(nombre, fecha_creacion, contenido, descripción, titulo) VALUES('Pedro', '2021-03-30', 'Crea y Divaga, es una premisa que debes seguir como nuevo emprendedor', 'Crea y Divaga', 'Jeff Bezos');

INSERT INTO post(nombre, fecha_creacion, contenido, descripción, titulo) VALUES('Pedro', '2021-03-30', 'El marketing moderno debe esta centrado en como generamos cambio en los usuarios', 'Esto es Marketing', 'MK para dummies');

--7. Eliminar el post de Carlos
DELETE FROM post WHERE nombre='Carlos';

--8. Ingresar un nuevo post para el usuario "Carlos"
INSERT INTO post(nombre, fecha_creacion, contenido, descripción,titulo) VALUES('Carlos', '2021-03-30', 'El metal es el último genero musical virtuoso cread', 'Metalingus', 'Metal For Ever');

-- 9. Crear una nueva tabla, llamada comentarios, con los atributos id, fecha y hora de creación,contenido, que se relacione con la tabla posts.
ALTER TABLE post ADD PRIMARY KEY (id);

CREATE TABLE comentarios(id SMALLINT, fecha_hora_creacion TIMESTAMP, contenido VARCHAR, FOREIGN KEY (id) REFERENCES
post(id));

--10. Crear 2 comentarios para el post de "Pamela" y 4 para "Carlos"
INSERT INTO comentarios(id, fecha_hora_creacion, contenido) VALUES( 1, '2021-03-30 20:28:15', 'The Beatles son los padres de la música contemporanea');

INSERT INTO comentarios(id, fecha_hora_creacion, contenido) VALUES( 2, '2021-03-30 20:31:30', 'we are walking the wire');

INSERT INTO comentarios(id, fecha_hora_creacion, contenido) VALUES( 6, '2021-03-30 20:32:30', 'the wrong side of heaven');

INSERT INTO comentarios(id, fecha_hora_creacion, contenido) VALUES( 6, '2021-03-30 20:33:30', 'the ministry of lost souls');

INSERT INTO comentarios(id, fecha_hora_creacion, contenido) VALUES( 6, '2021-03-30 20:34:30', 'breaking the habbit');

INSERT INTO comentarios(id, fecha_hora_creacion, contenido) VALUES( 6, '2021-03-30 20:35:30', 'strange dejavu');

--11. Crear un nuevo post para "Margarita"
INSERT INTO post(nombre, fecha_creacion, contenido, descripción, titulo) VALUES('Margartia', '2021-03-30', 'this is the payoff', 'Grey Reverend', 'Música');

--12. Ingresar 5 comentarios para el post de Margarita

INSERT INTO comentarios(id, fecha_hora_creacion, contenido) VALUES( 7, '2021-03-30 20:35:30', 'the payoff');

INSERT INTO comentarios(id, fecha_hora_creacion, contenido) VALUES( 7, '2021-03-30 20:35:30', 'postcards');

INSERT INTO comentarios(id, fecha_hora_creacion, contenido) VALUES( 7, '2021-03-30 20:35:30', 'altruistic holiday');

INSERT INTO comentarios(id, fecha_hora_creacion, contenido) VALUES( 7, '2021-03-30 20:35:30', 'man in the moon');

INSERT INTO comentarios(id, fecha_hora_creacion, contenido) VALUES( 7, '2021-03-30 20:35:30', 'i become so numb');

--RECORDATORIO : Se llama clave primaria a un campo o a una combinación de campos que identifica de forma única a cada fila de una tabla. Una clave primaria comprende de esta manera una columna o conjunto de columnas. No puede haber dos filas en una tabla que tengan la misma clave primaria.