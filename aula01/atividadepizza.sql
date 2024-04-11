/*Heitor Leal de S.M. da Silva*/

drop database if exists pizzaria;
create database pizzaria;
use pizzaria;
create table cliente (
Id_cliente varchar(50),
Nome varchar(50),
CPF  varchar(11),
telefone varchar (12),
Endereço varchar(255),
Email varchar(50),
primary key(Id_cliente));

create table pizzas (
Nome varchar(50),
Descrição varchar(100),
Preço decimal(4,2),
Id_pizza varchar(50),
primary key(Id_pizza));

create table fornecedores(
Id_fornecedor varchar(50),
Contato varchar(50),
Endereço varchar(50),
Email varchar(50),
Produto varchar(50),
primary key (Id_fornecedor));

create table funcionários(
Id_funcionário varchar(50),
Nome varchar (50),
endereço varchar(50),
Cargo varchar(50),
Salário varchar(50),
email varchar(50),
telefone varchar(11),
primary key (Id_funcionário));

create table pedido(
Id_cliente varchar(50),
Id_pizza varchar(50),
Quantidade varchar(50),
endereço varchar(50),
horario_pedido varchar(50),
atendente varchar(50),
foreign key (Id_cliente) references cliente(Id_cliente),
foreign key (Id_pizza) references pizzas(Id_pizza),
foreign key (endereço) references cliente(endereço),
foreign key (atendente) references funcionários(Nome));

INSERT INTO cliente (Id_cliente, Nome, CPF, telefone, Endereço, Email)
VALUES 
('1', 'Maria Silva', '12345678901', '123456789', 'Rua da Paz, 123', 'maria@example.com'),
('2', 'João Oliveira', '98765432109', '987654321', 'Avenida dos Sonhos, 456', 'joao@example.com'),
('3', 'Ana Santos', '45678912305', '456789123', 'Travessa das Flores, 789', 'ana@example.com'),
('4', 'Carlos Souza', '74185296302', '741852963', 'Rua das Estrelas, 789', 'carlos@example.com'),
('5', 'Mariana Lima', '36925814703', '369258147', 'Avenida das Águas, 456', 'mariana@example.com');

INSERT INTO pizzas (Nome, Descrição, Preço, Id_pizza)
VALUES 
('Calabresa', 'Pizza com calabresa e queijo', 25.00, '1'),
('Margherita', 'Pizza tradicional com tomate, queijo e manjericão', 30.00, '2'),
('Frango com Catupiry', 'Pizza de frango desfiado com catupiry', 28.00, '3'),
('Portuguesa', 'Pizza com presunto, queijo, ovos, cebola, azeitonas e ervilhas', 27.00, '4'),
('Quatro Queijos', 'Pizza com mussarela, parmesão, gorgonzola e catupiry', 29.00, '5');

INSERT INTO fornecedores (Id_fornecedor, Contato, Endereço, Email, Produto)
VALUES 
('1', 'João Fornecedor', 'Avenida das Flores, 456', 'joao@example.com', 'Queijo'),
('2', 'Pedro Fornecedor', 'Rua das Oliveiras, 789', 'pedro@example.com', 'Tomate'),
('3', 'Maria Fornecedora', 'Travessa dos Pães, 123', 'maria@example.com', 'Calabresa'),
('4', 'Carlos Fornecedor', 'Avenida das Frutas, 456', 'carlos@example.com', 'Molho de Tomate'),
('5', 'Ana Fornecedora', 'Rua das Carnes, 789', 'ana@example.com', 'Catupiry');

INSERT INTO funcionários (Id_funcionário, Nome, endereço, Cargo, Salário, email, telefone)
VALUES 
('1', 'Pedro Oliveira', 'Rua das Árvores, 789', 'Atendente', '2000.00', 'pedro@example.com', '987654321'),
('2', 'Ana Silva', 'Avenida das Pedras, 456', 'Chef de Cozinha', '3000.00', 'ana@example.com', '456789123'),
('3', 'João Santos', 'Travessa das Montanhas, 123', 'Garçom', '1800.00', 'joao@example.com', '123456789'),
('4', 'Mariana Souza', 'Rua das Praias, 456', 'Entregador', '1500.00', 'mariana@example.com', '369258147'),
('5', 'Carlos Lima', 'Avenida dos Rios, 789', 'Gerente', '3500.00', 'carlos@example.com', '741852963');

INSERT INTO pedido (Id_cliente, Id_pizza, Quantidade, endereço, horario_pedido)
VALUES 
('1', '1', '2', 'Rua da Paz, 123', '2024-04-04 18:00:00'),
('2', '2', '1', 'Avenida dos Sonhos, 456', '2024-04-05 19:30:00'),
('3', '3', '3', 'Travessa das Flores, 789', '2024-04-06 20:45:00'),
('4', '4', '2', 'Rua das Estrelas, 789', '2024-04-07 21:15:00'),
('5', '5', '1', 'Avenida das Águas, 456', '2024-04-08 22:30:00');

