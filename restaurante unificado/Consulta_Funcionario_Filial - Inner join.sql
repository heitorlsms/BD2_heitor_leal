select Funcionarios.ID_func, Funcionarios.cpf, Funcionarios.nome, Funcionarios.email, Funcionarios.endereco, Funcionarios.ID_filial, Funcionarios.cargo
from Funcionarios
INNER JOIN Filiais ON Funcionarios.ID_filial = Filiais.ID_filial



/*A INNER JOINpalavra-chave seleciona registros que possuem valores correspondentes em ambas as tabelas. */