create database if not exists Restaurante;
use Restaurante;

create table if not exists Cliente(
Id_cliente varchar(50),
Nome varchar(50),
CPF  varchar(11),
telefone varchar (12),
Endereço varchar(255),
Email varchar(50),
primary key(Id_cliente));

create table if not exists Funcionários(
Id_funcionário varchar(50),
Nome varchar (50),
endereço varchar(50),
Cargo varchar(50),
Salário varchar(50),
email varchar(50),
telefone varchar(11),
primary key (Id_funcionário));
create table if not exists Ingredientes(
nome varchar(50),
id_ingredientes varchar(50),
quantidade varchar(50),
preço decimal(4, 2),
primary key(id_ingredintes) );

create table if not exists pratos(
nome varchar(50),
descrição varchar(250),
id_ingredientes varchar(50),
Preço varchar(50),
foreign key(id_ingredientes) references Ingredientes(id_ingredientes));

create table if not exists  Fornecedores(
Id_fornecedor varchar(50),
Contato varchar(50),
Endereço varchar(50),
Email varchar(50),
Produto varchar(50),
primary key (Id_fornecedor));

create table if not exists Reservas(
id_reserva varchar(50),
nome_do_cliente varchar(50),
CPF varchar(50),
numero_de_pessoas varchar(50),
data_e_hora_da_reserva datetime,
id_mesa varchar(50),
id_filial varchar(50),
primary key(id_reserva),
foreign key(CPF) references Cliente(CPF),
foreign key(id_mesa) references Mesas(id_mesa),
foreign key(id_filial) references Filial(id_filial)
);

create table if not exists Entregas(
id_entrega varchar(50),
id_pedido varchar(50),
data_e_hora datetime,
endereço varchar(50),
primary key(id_entrega),
foreign key(id_pedido) references Pedidos_Clientes(id_pedido));

create table if not exists Filial(
id_filial varchar(50),
Nome varchar(50),
endereço varchar(50),
telefone varchar(50),
primary key (id_filial));

create table if not exists Bebidas(
id_bebida varchar(50), 
nome varchar(50),
descrição varchar(50),
preço decimal(4, 2),
primary key(id_bebida)
 );

create table if not exists Pedidos_Clientes(
Id_cliente varchar(50),
Id_prato varchar(50),
id_pedido varchar(50),
Quantidade varchar(50),
endereço varchar(50),
horario_pedido varchar(50),
atendente varchar(50),
foreign key (Id_cliente) references cliente(Id_cliente),
foreign key (Id_prato) references pratos(Id_prato),
foreign key (atendente) references funcionários(Nome));

create table if not exists Pedidos_Forn(
Id_fornecedor varchar(50),
Id_ingrediente varchar(50),
Quantidade varchar(50),
endereço varchar(50),
horario_pedido varchar(50),
atendente varchar(50),
foreign key (Id_fornecedor) references fornecedor(Id_fornecedor),
foreign key (Id_ingrediente) references ingrediente(Id_ingrediente)
);

create table if not exists Mesas(
id_mesa varchar(50), 
numero varchar(50),
capacidade int (20),
descricao varchar (50));
