use clinica;

#Alterando CPF da tabela medico
alter table Medicos change CPF CPF varchar(11) unique;

#Alterando CPF da tabela paciente
alter table Pacientes change CPF CPF varchar(11) unique;

#Alterando CPF da tabela paciente
alter table Funcionarios change CPF CPF varchar(11) unique;

#Alterando nroa da tabela Ambulatório
alter table medicos change codm codm int auto_increment;

drop table ambulatorio;
#Mostra a descrição da tabela
desc Medicos;

select * from Medicos;

#Criando uma coluna
alter table Funcionarios add column nroa int;

#Inserindo dados na tabela de ambulatório
insert into Ambulatorios(andar, capacidade) values(1, 30),(1,50),(2,40),(2,25),(2,55);

#Inserindo dados na tabela Médico
insert into Medicos(nome, idade, especialidade, CPF, cidade) 
			values("João", 40, "ortopedia", 10101010101, "florianopolis");
insert into Medicos(nome, idade, especialidade, CPF, cidade) 
			values("Maria", 42, "traumatologia", 00101010101, "Blumenau");
insert into Medicos(nome, idade, especialidade, CPF, cidade) 
			values("Pedro", 51, "pedriatria", 11101010101, "São José");
insert into Medicos(nome, idade, especialidade, CPF, cidade) 
			values("Carlos", 28, "ortopedia", 01101010101, "Joinvile");
insert into Medicos(nome, idade, especialidade, CPF, cidade) 
			values("Marcia", 33, "neurologia", 11101110101, "Biguacu");
