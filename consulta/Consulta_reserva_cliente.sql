select id_cliente, nome, cpf, email, id_reserva, data_reserva, id_filial 
from clientes, reservas
where
clientes.id_cliente = reserva.id_cliente and
clientes.id_cliente = 4;

/*Consulta para ver as reservas que um cliente fez. Poderia ser no site em uma tela de reservas do cliente.*/