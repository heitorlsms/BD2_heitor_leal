DROP DATABASE IF EXISTS Restaurante; 

CREATE DATABASE Restaurante; 

USE Restaurante; 

-- Tabela de 
CREATE TABLE IF NOT EXISTS Clientes( 
	ID_cliente int(8) AUTO_INCREMENT, 
	CPF varchar(11) not null, 
	Nome varchar(255),
	Sexo varchar(255),
	Idade varchar(3),
	Endereco varchar(255), 
	Email varchar(255), 
	Telefone varchar(12),
	Data_cadastro datetime,
    Senha  varchar(255) not null,
	PRIMARY KEY (ID_cliente) 
);

-- Tabela de Clientes 
CREATE TABLE IF NOT EXISTS Filiais( 
	ID_filial int(3) AUTO_INCREMENT, 
	Endereco varchar(255), 
	Email varchar(255), 
	Telefone varchar(12), 
	Quant_mesas int(3), 
	Avaliacao decimal(4,2),
    Cliente varchar(255),
    Funcionario varchar(255),
	PRIMARY KEY (ID_filial),
    FOREIGN KEY(Cliente) REFERENCES Clientes(Nome),
    FOREIGN KEY(Funcionario) REFERENCES Funcionarios(Nome) 
);

-- Tabela de Funcionários
CREATE TABLE IF NOT EXISTS Funcionarios( 
	ID_func int(5) AUTO_INCREMENT, 
	CPF varchar(11) not null, 
	Nome varchar(255),
	Sexo varchar(255),
	Idade varchar(3),
	Endereco varchar(255), 
	Email varchar(255), 
	Telefone varchar(12), 
	ID_filial int(3),
	Cargo varchar(255),
	Data_contatacao datetime,
	PRIMARY KEY (ID_func),
	foreign key(ID_filial) REFERENCES Filiais(ID_filial)
); 

-- Tabela de Reservas
CREATE TABLE IF NOT EXISTS Reservas(
	ID_reserva int(5) AUTO_INCREMENT not null,
	Data_reserva datetime, 
	ID_cliente int(8), 
	Mesa varchar(2),
	ID_filial int(3),
	Capacidade varchar(2),
	PRIMARY KEY (ID_reserva),
	FOREIGN KEY (ID_cliente) REFERENCES Clientes (ID_cliente),
	FOREIGN KEY (ID_filial) REFERENCES Filiais(ID_filial)
); 

-- Tabela de Fornecedores
CREATE TABLE IF NOT EXISTS Fornecedores(
	Nome varchar(255),
	ID_fornecedor int(5) AUTO_INCREMENT, 
	CNPJ varchar(14),
	Tipo_material varchar(255),
	Email varchar(255), 
	Telefone varchar(12), 
	Valor_material decimal(8,2), 
	PRIMARY KEY (ID_fornecedor) 
); 

-- Tabela de Estoque
CREATE TABLE IF NOT EXISTS Estoque( 
	ID_fornecedor int(5), 
	ID_materia int(6) AUTO_INCREMENT, 
	Quantidade int(5),
	ID_filial int(3),
	PRIMARY KEY (ID_materia), 
	FOREIGN KEY (ID_fornecedor) REFERENCES Fornecedores (ID_fornecedor),
	FOREIGN KEY (ID_filial) REFERENCES Filiais(ID_filial)
);  

-- Tabela de Pratos
CREATE TABLE IF NOT EXISTS Pratos( 
	ID_prato int(3) AUTO_INCREMENT,
	Nome varchar(255),
	Descricao varchar(255),
	Valor decimal(5,2),
	PRIMARY KEY (ID_prato) 
); 

-- Tabela de Bebidas
CREATE TABLE IF NOT EXISTS Bebidas( 
	ID_bebida int(3) AUTO_INCREMENT,
	Nome varchar(255),
	Descricao varchar(255),
	Valor decimal (4,2), 
	PRIMARY KEY (ID_bebida) 
); 

-- Tabela de Ingredientes
CREATE TABLE IF NOT EXISTS Ingredientes(
	ID_ingrediente int(3) AUTO_INCREMENT,
	Nome varchar(255),
	Unidade_medida Varchar(255),
	ID_prato int(3),
	ID_bebida int(3),
	PRIMARY KEY (ID_ingrediente),
	FOREIGN KEY (ID_prato) REFERENCES Pratos(ID_prato),
	FOREIGN KEY (ID_bebida) REFERENCES Bebidas(ID_bebida)
);

-- Tabela de Pedidos
CREATE TABLE IF NOT EXISTS Pedidos( 
	ID_pedido int(8) AUTO_INCREMENT, 
	ID_cliente int(8), 
	ID_prato int(2), 
	ID_bebida int(3), 
	Valor decimal(4,2),
	Tipo_pagamento varchar(255),
	Endereco varchar(255),
	Data_pedido datetime,
	PRIMARY KEY (ID_pedido), 
	FOREIGN KEY (ID_cliente) REFERENCES Clientes(ID_cliente), 
	FOREIGN KEY (ID_prato) REFERENCES Pratos (ID_prato), 
	FOREIGN KEY (ID_bebida) REFERENCES Bebidas (ID_bebida) 
); 

-- Tabela de Entregas
CREATE TABLE IF NOT EXISTS Entregas( 
	ID_entrega int(5) AUTO_INCREMENT,
	Endereco varchar(255),
	ID_pedido int(8),
	Data_entrega datetime,
	PRIMARY KEY (ID_entrega), 
	FOREIGN KEY (ID_pedido) REFERENCES Pedidos (ID_pedido) 
); 

select * from Clientes where (id_clientes);
select CPF, Nome, Endereco, Email, Senha, Telefone from Clientes;
select Funcionarios, ID_filial from Filiais order by ID_filial ASC;
select Cliente from Filiais order by Cliente ASC ;

-- Inserindo dados nas tabelas
 
-- Tabela de Clientes
INSERT INTO Clientes (CPF, Nome, Sexo, Idade, Endereco, Email, Telefone, Data_cadastro)
VALUES 
('12345678901', 'Alice Silva', 'Feminino', '28', 'Rua A, 123', 'alice.silva@example.com', '11987654321', '2023-05-21 14:30:00'),
('23456789012', 'Bruno Souza', 'Masculino', '35', 'Rua B, 456', 'bruno.souza@example.com', '11987654322', '2023-05-22 15:30:00'),
('34567890123', 'Carla Pereira', 'Feminino', '42', 'Rua C, 789', 'carla.pereira@example.com', '11987654323', '2023-05-23 16:30:00'),
('45678901234', 'Daniel Oliveira', 'Masculino', '30', 'Rua D, 101', 'daniel.oliveira@example.com', '11987654324', '2023-05-24 17:30:00'),
('56789012345', 'Eva Costa', 'Feminino', '25', 'Rua E, 202', 'eva.costa@example.com', '11987654325', '2023-05-25 18:30:00');
 
-- Tabela de Filiais
INSERT INTO Filiais (Endereco, Email, Telefone, Quant_mesas, Avaliacao)
VALUES 
('Rua Principal, 500', 'contato@restaurante.com', '11987654326', 50, 4.5);
 
-- Tabela de Funcionários
INSERT INTO Funcionarios (CPF, Nome, Sexo, Idade, Endereco, Email, Telefone, ID_filial, Cargo, Data_contatacao)
VALUES 
('67890123456', 'Fernando Lima', 'Masculino', '40', 'Rua F, 303', 'fernando.lima@example.com', '11987654327', 1, 'Gerente', '2023-01-15 09:00:00'),
('78901234567', 'Gabriela Martins', 'Feminino', '32', 'Rua G, 404', 'gabriela.martins@example.com', '11987654328', 1, 'Cozinheira', '2023-02-10 10:00:00'),
('89012345678', 'Heitor Almeida', 'Masculino', '29', 'Rua H, 505', 'heitor.almeida@example.com', '11987654329', 1, 'Garçom', '2023-03-05 11:00:00'),
('90123456789', 'Isabela Fernandes', 'Feminino', '27', 'Rua I, 606', 'isabela.fernandes@example.com', '11987654330', 1, 'Atendente', '2023-04-01 12:00:00'),
('01234567890', 'João Carvalho', 'Masculino', '34', 'Rua J, 707', 'joao.carvalho@example.com', '11987654331', 1, 'Chefe de Cozinha', '2023-05-01 13:00:00');
 
-- Tabela de Pratos
INSERT INTO Pratos (Nome, Descricao, Valor)
VALUES 
('Feijoada', 'Feijoada completa com acompanhamentos', 29.90);
 
-- Tabela de Fornecedores
INSERT INTO Fornecedores (Nome, CNPJ, Tipo_material, Email, Telefone, Valor_material)
VALUES 
('Fornecedor A', '12345678000190', 'Feijão', 'fornecedor.a@example.com', '11987654332', 5.50),
('Fornecedor B', '23456789000190', 'Carne', 'fornecedor.b@example.com', '11987654333', 10.00);
 
-- Tabela de Reservas
INSERT INTO Reservas (Data_reserva, ID_cliente, Mesa, ID_filial, Capacidade)
VALUES 
('2024-05-23 19:00:00', 1, 'A1', 1, '4'),
('2024-05-24 20:00:00', 2, 'A2', 1, '4'),
('2024-05-25 21:00:00', 3, 'A3', 1, '4');
 
-- Tabela de Estoque
INSERT INTO Estoque (ID_fornecedor, Quantidade, ID_filial)
VALUES 
(1, 100, 1), -- Feijão
(2, 50, 1); -- Carne
 
-- Tabela de Bebidas
INSERT INTO Bebidas (Nome, Descricao, Valor)
VALUES 
('Suco de Laranja', 'Suco natural de laranja', 7.00),
('Refrigerante', 'Refrigerante de cola', 5.00);
 
-- Tabela de Pedidos
INSERT INTO Pedidos (ID_cliente, ID_prato, ID_bebida, Valor, Tipo_pagamento, Endereco, Data_pedido)
VALUES 
(1, 1, 1, 36.90, 'Cartão de Crédito', 'Rua A, 123', '2024-05-21 19:00:00'),
(2, 1, 2, 34.90, 'Dinheiro', 'Rua B, 456', '2024-05-22 20:00:00'),
(3, 1, 1, 36.90, 'Cartão de Débito', 'Rua C, 789', '2024-05-23 21:00:00'),
(4, 1, 2, 34.90, 'Pix', 'Rua D, 101', '2024-05-24 19:00:00'),
(5, 1, 1, 36.90, 'Cartão de Crédito', 'Rua E, 202', '2024-05-25 20:00:00');
 
-- Tabela de Entregas
INSERT INTO Entregas (Endereco, ID_pedido, Data_entrega)
VALUES 
('Rua A, 123', 1, '2024-05-21 20:00:00'),
('Rua B, 456', 2, '2024-05-22 21:00:00'),
('Rua C, 789', 3, '2024-05-23 22:00:00');