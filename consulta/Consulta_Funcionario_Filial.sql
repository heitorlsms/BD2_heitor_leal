select Funcionarios.ID_func, Funcionarios.cpf, Funcionarios.nome, Funcionarios.email, Funcionarios.endereco, Funcionarios.ID_filial, Funcionarios.cargo, Filiais.ID_filial, Filiais.endereco 
from Filiais, Funcionarios
where
funcionarios.id_filial = filiais.id_filial and 
funcionarios.id_func = 4;


/*Consulta para ver em qual filial os funcionarios trabalham. Poderia ser usada na tela de cadastro de funcionarios ou até para uma 
pesquisa da distância que os funcionários percorrem até o trabalho */