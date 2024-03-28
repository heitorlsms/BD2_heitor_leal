/*Heitor Leal de S.M. da Silva*/

create database pizzaria;
use pizzaria;
create table cliente (
Id_cliente varchar(50),
Nome varchar(50),
CPF  varchar(11),
telefone varchar (12),
Endereço varchar(255),
Email varchar(50),
Id_cliente varchar(50),
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
foreign key (Id_cliente) references cliente(Id_cliente),
foreign key (Id_pizza) references pizzas(Id_pizza));
