select Fornecedores.nome, Fornecedores.ID_fornecedor, Fornecedores.CNPJ, Fornecedores.Tipo_material, Fornecedores.email, Fornecedores.Valor_material
from Fornecedores
RIGHT JOIN Estoque on Fornecedores.ID_fornecedor = Estoque.ID_fornecedor 
where Fornecedores.Valor_material between "100" and "400";



/*A RIGHT JOIN retorna todos os registros da tabela da direita (table2) e os registros correspondentes da tabela da esquerda (table1). 
O resultado é 0 registros do lado esquerdo, se não houver correspondência.*/