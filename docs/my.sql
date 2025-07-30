-- docker cp ./world mysql:/tmp/datos

-- El Algebra relacional es un lenguaje de consulta procedural. 
--Consta de un conjunto de operaciones que toman como entrada 
-- una o dos relaciones y producen como resultado una nueva relación,
-- por lo tanto, es posible anidar y combinar operadores.


-- enter to mysql from consoles


DATE - format: YYYY-MM-DD
DATETIME - format: YYYY-MM-DD HH:MI:SS
TIMESTAMP - format: YYYY-MM-DD HH:MI:SS
YEAR - format YYYY or YY

mysql -u root -p < ./test_db/employees.sql

--  basic commands 
show databases;
show tables;
show columns from employees;
use database; -- to select a database
select DATABASE(); -- to see the current database selected
CREATE DATABASE <database>; -- to create a database
DROP DATABASE <database>

CREATE TABLE shop (
    article INT NOT NULL,
    dealer  CHAR(20) NOT NULL,
    price   DECIMAL(16,2) NOT NULL,
    PRIMARY KEY(article, dealer));

INSERT INTO shop VALUES
    (1,'A',3.45),(1,'B',3.99),(2,'A',10.99),(3,'B',1.45),
    (3,'C',1.69),(3,'D',1.25),(4,'D',19.95);


-- queries

select * from ;

SELECT MAX(article) AS article FROM shop;

SELECT article, dealer, price
FROM   shop
WHERE  price=(SELECT MAX(price) FROM shop);

CREATE TABLE empleado (
    id INT 
    nombre varchar(50),
    apellido varchar(50),
    direccion varchar(50),
    fNacimiento date
);

CREATE TABLE empleado (
    id INT 
    nombre varchar(50),
    apellido varchar(50),
    direccion varchar(50),
    fNacimiento date
);

CREATE TABLE empleado (
    id INT 
    nombre varchar(50),
    apellido varchar(50),
    direccion varchar(50),
    fNacimiento date
);

















