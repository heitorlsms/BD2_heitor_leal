select Fornecedores.nome, Fornecedores.ID_fornecedor, Fornecedores.CNPJ, Fornecedores.Tipo_material, Fornecedores.email, Fornecedores.Valor_material, Estoque.ID_fornecedor, Estoque.ID_materia, Estoque.quantidade, Estoque.ID_filial, Filiais.ID_filial, Filiais.endereco
from Fornecedores, Estoque, Filiais
where
Fornecedores.ID_fornecedor = Estoque.ID_fornecedor and
Estoque.id_filial = filiais.id_filial and 
Fornecedores.ID_fornecedor = 5;


/*Consulta para ver oque o fornecedor fornece e para qual filial. Poderia ser usada na tela de cadastro de funcionarios ou até para uma 
pesquisa da distância que os funcionários percorrem até o trabalho */