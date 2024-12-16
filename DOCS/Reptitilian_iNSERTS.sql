
-- Insertar usuarios
INSERT INTO Usuarios (nombre, correo_electronico, contrasena, direccion, telefono, tipo_usuario)
VALUES
('Juan Pérez', 'juan@example.com', 'contraseña123', 'Calle Ficticia 123', '555-1234', 'cliente'),
('Ana Gómez', 'ana@example.com', 'contraseña456', 'Calle Real 456', '555-5678', 'admin'),
('Luis Martínez', 'luis@example.com', 'contraseña789', 'Avenida Libertad 789', '555-8765', 'empleado');

-- Insertar reptiles
INSERT INTO Reptiles (nombre_comun, nombre_cientifico, descripcion, precio, stock, habitat, dieta, cuidados_especiales, imagen_url)
VALUES
('Iguana verde', 'Iguana iguana', 'Reptil grande de la familia Iguanidae.', 120.00, 50, 'Selvas tropicales', 'Frutas, hojas verdes', 'Evitar cambios bruscos de temperatura.', 'imagen_url_iguana'),
('Gecko leopardo', 'Eublepharis macularius', 'Reptil pequeño originario de Asia.', 35.50, 100, 'Desiertos', 'Insectos', 'Mantener en ambientes secos.', 'imagen_url_gecko');

-- Insertar productos
INSERT INTO Productos (nombre, descripcion, categoria, precio, stock, imagen_url)
VALUES
('Alimento para Iguanas', 'Alimento seco especialmente para iguanas.', 'Alimentos', 15.00, 100, 'imagen_url_alimento_iguana'),
('Terrario pequeño', 'Terrario para reptiles pequeños como geckos.', 'Accesorios', 40.00, 50, 'imagen_url_terario');

-- Insertar pedidos
INSERT INTO Pedidos (usuario_id, total, estado)
VALUES
(1, 200.00, 'pendiente'),
(2, 75.00, 'completado');

-- Insertar detalles de pedidos
INSERT INTO DetallesPedidos (pedido_id, producto_id, reptil_id, cantidad, precio_unitario)
VALUES
(1, 1, NULL, 2, 15.00), -- 2 alimentos para iguanas
(2, NULL, 1, 1, 120.00); -- 1 iguana verde

-- Insertar opiniones
INSERT INTO Opiniones (usuario_id, producto_id, reptil_id, calificacion, comentario)
VALUES
(1, 1, NULL, 5, 'Excelente comida para mi iguana.'),
(2, NULL, 1, 4, 'Muy bonita la iguana, pero un poco más cara de lo esperado.');

-- Insertar suscripciones
INSERT INTO Suscripciones (usuario_id, nivel, fecha_inicio, fecha_fin)
VALUES
(1, 'basico', '2024-01-01', '2024-12-31'),
(2, 'premium', '2024-01-01', '2024-06-30');

-- Insertar proveedores
INSERT INTO Proveedores (nombre, contacto, telefono, direccion)
VALUES
('Proveedor A', 'contacto@proveedora.com', '555-0000', 'Calle Ficticia 101'),
('Proveedor B', 'contacto@proveedorb.com', '555-1111', 'Avenida Real 202');

-- Insertar productos por proveedor
INSERT INTO ProductosProveedores (proveedor_id, producto_id, precio_compra)
VALUES
(1, 1, 12.00),
(2, 2, 30.00);