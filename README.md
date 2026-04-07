# gestion-ventas-sql
Proyecto n°7 desarrollado en bootcamp de Análisis de datos, Talento Digital &lt;3

📄 Sistema de Gestión de Ventas
📌 En este proyecto se desarrolló un sistema básico de gestión de ventas utilizando una base de datos relacional en SQLite. El objetivo fue diseñar una estructura que permita almacenar información de clientes, productos y ventas, así como realizar consultas para analizar los datos de manera eficiente.

🔹 Lección 1: Bases de datos relacionales
¿Qué se hizo?
Se comprendió el concepto de base de datos relacional y su utilidad en contextos reales. Se definió la estructura general del sistema de ventas.
Se estableció una base conceptual clara sobre cómo organizar los datos en tablas relacionadas, entendiendo las ventajas frente al uso de planillas, como la reducción de errores y la integridad de los datos.

🔹 Lección 2: Consultas a una sola tabla
Se creó la tabla clientes, se insertaron registros de ejemplo y se realizaron consultas básicas utilizando SELECT y WHERE.
Se logró visualizar la información almacenada y aplicar filtros simples, permitiendo obtener datos específicos como clientes por ciudad.

🔹 Lección 3: Consultas a tablas relacionadas
Se crearon las tablas productos y ventas, estableciendo relaciones mediante claves primarias y foráneas. Se realizaron consultas utilizando JOIN.
Se pudo integrar la información de distintas tablas, obteniendo resultados completos como qué cliente compró qué producto y en qué fecha.

🔹 Lección 4: Consultas agrupadas
Se aplicaron funciones de agregación como SUM() y COUNT(), junto con GROUP BY, para analizar los datos de ventas.
Se logró calcular métricas como el total gastado por cliente y la cantidad de ventas realizadas, facilitando el análisis de la información.

🔹 Lección 5: Consultas anidadas
Se utilizaron subconsultas para resolver consultas más complejas, como identificar clientes con múltiples compras y productos más vendidos.
Se obtuvo información más avanzada sin necesidad de crear tablas adicionales, mejorando la eficiencia y claridad de las consultas.

🔹 Lección 6: Creación y manipulación de tablas
Se modificó la estructura de la tabla productos agregando una columna de stock, se actualizaron datos y se eliminaron registros.
Se logró gestionar dinámicamente la base de datos, comprendiendo el impacto de operaciones como UPDATE y DELETE sobre la integridad de los datos.
