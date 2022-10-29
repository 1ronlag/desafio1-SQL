ingresamos a Postgres Sql
localhost
postgres
5432
postgres

-- Crea una base de datos llamada desafio-tuNombre-tuApellido-3digitos
CREATE DATABASE desafio_nicolas_saavedra_010;

--Ingresa a la base de datos creada
\c desafio_nicolas_saavedra_010;
 
--Crea una tabla llamada clientes, con una columna llamada email de tipo varchar(50),
--una columna llamada nombre de tipo varchar sin limitación, una columna llamada
--teléfono de tipo varchar(16), un campo llamado empresa de tipo varchar(50) y una
--columna de tipo smallint, para indicar la prioridad del cliente. Ahí se debe ingresar un
--valor entre 1 y 10, donde 10 es más prioritario.--

CREATE TABLE client (
id SERIAL PRIMARY KEY,
email VARCHAR (50) UNIQUE,
client_name VARCHAR,
phone VARCHAR(16),
company VARCHAR(50),
priority SMALLINT NOT NULL CHECK (priority >= 1 AND priority <= 10)
);

--Ingresa 5 clientes distintos con distintas prioridades, el resto de los valores los puedes inventar.

INSERT INTO client (email, client_name, phone, company, priority) VALUES ('dtargaryen@kingslanding.com', 'Daemon Targaryen', '987654321', 'Valirya Inc', 10), 
('rtargaryen@kingslanding.com', 'Rhaenyra Targaryen','789456213', 'DragonStone Inc',9), ('nstark@westeros.com', 'Ned Stark','879456123', 'Winterfell Inc', 8), 
('cvelaryon@pentos.com','Corlys Velaryon','123456789', 'Driftmark', 7),('ohightower@gmail.com', 'Otto Hightower','321654987','El Faro Inc',1);


--VER LA TABLA
SELECT * FROM client;

--Selecciona los tres clientes de mayor prioridad.
SELECT * FROM  client ORDER BY priority DESC, id ASC LIMIT 3;


--Selecciona, de la tabla clientes, una prioridad o una empresa, de forma que el resultado devuelva 2 registros.

SELECT * FROM client  WHERE company = 'DragonStone Inc' OR priority = 8;