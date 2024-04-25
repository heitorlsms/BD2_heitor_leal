create database Restaurante;
use Restaurante;

create table Cliente(
Id_cliente varchar(50),
Nome varchar(50),
CPF  varchar(11),
telefone varchar (12),
Endereço varchar(255),
Email varchar(50),
primary key(Id_cliente));

create table Funcionários(
Id_funcionário varchar(50),
Nome varchar (50),
endereço varchar(50),
Cargo varchar(50),
Salário varchar(50),
email varchar(50),
telefone varchar(11),
primary key (Id_funcionário));

create table pratos(
nome varchar(50),
ingredientes varchar(50),
id_prato varchar(50),
primary key (id_prato));

create table  Fornecedores(
Id_fornecedor varchar(50),
Contato varchar(50),
Endereço varchar(50),
Email varchar(50),
Produto varchar(50),
primary key (Id_fornecedor));

create table Reservas();

create table Ingredientes(
nome varchar(50),
id_ingredintes varchar(50));

create table Entregas();

create table Filial();

create table Bebidas();

create table Pedidos_Clientes(
Id_cliente varchar(50),
Id_prato varchar(50),
Quantidade varchar(50),
endereço varchar(50),
horario_pedido varchar(50),
atendente varchar(50),
foreign key (Id_cliente) references cliente(Id_cliente),
foreign key (Id_prato) references pratos(Id_prato),
foreign key (atendente) references funcionários(Nome));

create table Pedidos_Forn(
Id_fornecedor varchar(50),
Id_ingrediente varchar(50),
Quantidade varchar(50),
endereço varchar(50),
horario_pedido varchar(50),
atendente varchar(50),
foreign key (Id_fornecedor) references fornecedor(Id_fornecedor),
foreign key (Id_ingrediente) references ingrediente(Id_ingrediente)
);

create table Mesas();
