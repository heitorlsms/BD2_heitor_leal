select id_cliente, nome, cpf, email, id_reserva, data_reserva, id_filial from clientes, reservas
where
clientes.id_cliente = reserva.id_cliente and
clientes.id_cliente = 4;