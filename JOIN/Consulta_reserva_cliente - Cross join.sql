select clientes.id_cliente, clientes.nome, clientes.cpf, clientes.email
from clientes
CROSS JOIN reservas ON clientes.id_cliente = reservas.id_cliente;



/*um cross join (ou produto cartesiano) é uma operação que combina cada linha de uma tabela com cada linha de outra tabela. 
Isso resulta em um conjunto de resultados onde cada linha da primeira tabela é emparelhada com cada linha da segunda tabela.ncia.*/