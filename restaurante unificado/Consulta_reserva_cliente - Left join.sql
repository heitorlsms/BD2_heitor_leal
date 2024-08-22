select clientes.id_cliente, clientes.nome, clientes.cpf, clientes.email
from clientes
LEFT JOIN reservas ON clientes.id_cliente = reservas.id_cliente;



/*A LEFT JOIN retorna todos os registros da tabela da esquerda (table1) e os registros correspondentes da tabela da direita (table2). 
O resultado é 0 registros do lado direito, se não houver correspondência.*/