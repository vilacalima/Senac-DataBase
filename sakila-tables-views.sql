use sakila;

create table Arquivo1(
	codigo int primary key auto_increment,
    nome varchar(50)
);

desc Arquivo1;

create table Arquivo2(
	codigo int primary key auto_increment,
    nome varchar(50)
);

insert into Arquivo1 (nome) values('Fernanda'), ('Josefa'), ('Luiz'), ('Fernando'), ('Romulo');

insert into Arquivo2 (nome) values('Carlos'), ('Manoel'), ('Luiz'), ('Fernando'), ('Romulo');

#Faz um select e junta as duas tabelas onde o nome que está no arquivo um também estará no arquivo2
select arquivo1.nome, arquivo2.nome from arquivo1
			inner join arquivo2 on arquivo1.nome = arquivo2.nome;

#Faz um select e mostra em tela onde o nome da tabela um não existe na tabela dois            
select arquivo1.*, arquivo2.nome from arquivo1 
			left join arquivo2 on arquivo1.nome = arquivo2.nome 
            where arquivo2.nome is null;
      
#Cria uma tabela copiando os dados dos dados de outra tabela       
create table ator as select * from actor;

#Criando uma tabela espelho da tabela principal
create view lista_ator as select first_name, last_name from actor;

#Visualizando todas as tabelas
show full tables;

select*from actor;
select*from ator;

#Navegando pela view
select*from lista_ator;

select * from customer;
select * from address;

#Faz um select nas tabelas customer e address
select * from customer 
		inner join address on customer.customer_id = address.address_id;
 
 #Faz um select e tras os campos customer_id, first_name, last_name, address e district
 select customer.customer_id, customer.first_name, customer.last_name, address.address, address.district
						from customer inner join address on customer.customer_id = address.address_id;

#Faz um select e tras os campos customer_id, first_name, last_name, address e district e muda os nomes da propriedade
select customer.customer_id as Codigo, customer.first_name as Nome, customer.last_name as Sobrenome, address.address as Endereco, address.district as bairro
						from customer inner join address on customer.customer_id = address.address_id;
                        
                        
#nome do cliente e endereço;
create view lista_cliente as select customer.customer_id as Codigo, customer.first_name as Nome, customer.last_name as Sobrenome, address.address as Endereco, address.district as bairro
						from customer inner join address on customer.customer_id = address.address_id;
                        
select*from lista_cliente;
