#Comando para criar um banco de dados
create database turmac;

#Comando para acessar o banco de dados
use turmac;

#Comando para criar uma tabela
create table cliente (
    cod_cli int primary key auto_increment,
    nome_cli varchar(40) not null,
    endereco varchar(40) null,
    cidade varchar(20),
    cep varchar(8),
    uf char(2)
);

#Comando para Selecionar uma tabela
select * from cliente;

#Comando para inserir dados em uma tabela
insert  into cliente (nome_cli,endereco,cidade,cep,uf) 
            values ('João pedro','Av. Euzebio,200','São Paulo','01003004','SP');
insert  into cliente (nome_cli,endereco,cidade,cep,uf) 
            values ('Italo da silva','Av. Euzebio,200','São Paulo','01003004','SP');
            
 #Comando para atualizar dados de uma tabela           
update cliente set endereco = 'Av. Euzebio,200' where cod_cli = 1;
update forne set endereco = 'Av. Euzebio,200' where cod_cli = 1;
