select Funcionarios.ID_func, Funcionarios.cpf, Funcionarios.nome, Funcionarios.email, Funcionarios.endereco, Funcionarios.ID_filial, Funcionarios.cargo
from Funcionarios
INNER JOIN Filiais ON Funcionarios.ID_filial = Filiais.ID_filial
where funcionarios.Data_contatacao between "2023-01-15 00:00:00" and "2023-02-20 23:00:00";



/*A INNER JOINpalavra-chave seleciona registros que possuem valores correspondentes em ambas as tabelas. */