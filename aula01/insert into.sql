/* create database escola;

use escola;

create table alunos(
codigo_aluno int(20),
nome_aluno varchar(45),
email varchar(45),
telefone varchar (12);)
*/

use escola;
insert into alunos
(
codigo_aluno, nome_aluno, email, telefone
)
values 
(
1, 'Pedro', 'pedro.silva@gmail.com', '119913186673',
2, 'Matheus', 'mathsouza@gmail.com', '119913186675',
3, 'Felipe', 'fe.m@gmail.com', '119913186678',
4, 'André', 'andrels@gmail.com', '119913186679',
5, 'João', 'joao@gmail.com', '119913186672' 
)