#Alterando CPF da tabela medico
alter table Medicos change CPF CPF varchar(11) unique;

#Alterando CPF da tabela paciente
alter table Pacientes change CPF CPF varchar(11) unique;

#Alterando CPF da tabela paciente
alter table Funcionarios change CPF CPF varchar(11) unique;

#Alterando nroa da tabela Ambulatório
alter table medicos change codm codm int auto_increment;

#Criando uma coluna
alter table Funcionarios add column nroa int;
alter table Funcionarios add column cidade varchar(20);

#Inserindo dados em uma coluna
alter table Funcionarios add foreign key(fk_nroa) references Ambulatorios(nroa);

#Alterando uma coluna
alter table Funcionarios change nroa fk_nroa int;

alter table consultas change data data_Consulta date;

#Excluindo uma coluna
alter table consultas drop column codm;

#excluindo uma tabela
drop table ambulatorio;
