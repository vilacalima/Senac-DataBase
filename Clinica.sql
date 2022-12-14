#Criando database
Create database Clinica;

#Acessando a tabela
use Clinica;

#Criando a tabela Ambulatorios
create table Ambulatorios(
	nroa int primary key auto_increment,
    andar int not null,
    capacidade smallint
);

#Acessando Tabela Ambulatorio
select * from Pacientes;

#Criando tabela Médicos
create table Medicos(
	codm int primary key auto_increment,
    nome varchar(40) not null,
    idade smallint not null,
    especialidade varchar(20),
    CPF varchar(11) unique,
    cidade varchar(30),
    fk_nroa int,
    foreign key(fk_nroa) references Ambulatorios(nroa)
);

#Criando tabela Pacientes
create table Pacientes(
	codp int primary key auto_increment,
    nome varchar(30) not null,
    idade smallint not null,
    cidade varchar(30),
    CPF varchar(11) unique,
    doenca varchar(30) not null
);

#Criando tabela Funcionarios
create table Funcionarios(
	codf int primary key auto_increment,
    nome varchar(40) not null,
    idade smallint,
    CPF varchar(11) unique,
    salario numeric(10, 2),
    cargo varchar(20)
);

#Criando tabela Consultas
create table Consultas(
	num_consulta int auto_increment primary key,
    codm int,
    data date,
    hora time,
    fk_codm int,
    fk_codp int,
    foreign key(fk_codm) references Medicos(codm),
    foreign key(fk_codp) references Pacientes(codp)
);
