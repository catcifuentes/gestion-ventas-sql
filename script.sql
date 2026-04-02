-- Sistema de Gestión de Ventas
-- TABLA CLIENTES --
-- Crear tabla 
CREATE TABLE clientes (
    id_cliente INTEGER PRIMARY KEY,
    nombre TEXT,
    email TEXT,
    ciudad TEXT,
    telefono TEXT
);

--Insertar clientes 
INSERT INTO clientes VALUES
(1, 'Ana Pérez', 'ana@email.com', 'Santiago', '123456'),
(2, 'Juan Soto', 'juan@email.com', 'Valparaíso', '987654'),
(3, 'María López', 'maria@email.com', 'Santiago', '456789');

--Consultas 
-- Ver todos
SELECT * FROM clientes;

-- Filtrar por ciudad
SELECT * FROM clientes WHERE ciudad = 'Santiago';

---PRODUCTOS Y VENTAS
--Crear tabla de productos
CREATE TABLE productos (
    id_producto INTEGER PRIMARY KEY,
    nombre TEXT,
    precio REAL
);

--Crear tabla ventas y relacionar con primary key 
CREATE TABLE ventas (
    id_venta INTEGER PRIMARY KEY,
    id_cliente INTEGER,
    id_producto INTEGER,
    fecha TEXT,
    cantidad INTEGER,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente),
    FOREIGN KEY (id_producto) REFERENCES productos(id_producto)
);

--Insertar datos de productos y ventas 
INSERT INTO productos VALUES
(1, 'Laptop', 800),
(2, 'Mouse', 20),
(3, 'Teclado', 50);

INSERT INTO ventas VALUES
(1, 1, 1, '2025-01-10', 1),
(2, 2, 2, '2025-01-11', 2),
(3, 1, 3, '2025-01-12', 1);

--JOIN para obtener qué cliente compró qué producto 
SELECT c.nombre, p.nombre, v.fecha
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
JOIN productos p ON v.id_producto = p.id_producto;

--CONSULTAS AGRUPADAS 
--total de ventas x cliente 
SELECT c.nombre, SUM(p.precio * v.cantidad) AS total_gastado
FROM ventas v
JOIN clientes c ON v.id_cliente = c.id_cliente
JOIN productos p ON v.id_producto = p.id_producto

--contar cantidad de ventas
SELECT COUNT(*) FROM ventas;
GROUP BY c.nombre;

--CONSUTAS ANIDADAS 
--Clientes con más de una compra 
SELECT nombre
FROM clientes
WHERE id_cliente IN (
    SELECT id_cliente
    FROM ventas
    GROUP BY id_cliente
    HAVING COUNT(*) > 1
);

--Producto más vendido 
SELECT nombre
FROM productos
WHERE id_producto = (
    SELECT id_producto
    FROM ventas
    GROUP BY id_producto
    ORDER BY SUM(cantidad) DESC
    LIMIT 1
);

--Cliente que más gasto 
SELECT nombre
FROM clientes
WHERE id_cliente = (
    SELECT id_cliente
    FROM ventas v
    JOIN productos p ON v.id_producto = p.id_producto
    GROUP BY id_cliente
    ORDER BY SUM(p.precio * v.cantidad) DESC
    LIMIT 1
);

--CREACION Y MANIPULACIÓN DE TABLAS 
--Agregar columna stock 
ALTER TABLE productos ADD COLUMN stock INTEGER;

--Actualizar el stock 
UPDATE productos
SET stock = 10; 

--Reducir stock tras venta 
UPDATE productos
SET stock = stock - 1
WHERE id_producto = 1;

--Eliminar producto 
DELETE FROM productos
WHERE id_producto = 2;
