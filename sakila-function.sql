use sakila;

#mostrar todas as tabelas
show full tables;

#mostrar as funcões criadas no banco de dados
show function status;

select * from payment;
select * from customer;

#fazendo um select na tabela customer para puxar o endereço  
#da tabela address da pela coluna address_id onde o customer_id for =1
select * from customer
		 inner join address using(address_id)
         where customer_id=1;

#fazendo um select na tabela customer para puxar o endereço e o nome
#da tabela address e customer da pela coluna address_id onde o customer_id for =1
select customer.first_Name, address.address from customer
		 inner join address using(address_id)
         where customer_id=1;		

#Criando uma função 
#O delimiter Limita a função
delimiter $$
create function endereco_cliente(codigo int)
returns varchar(100)
#determina o que a função vai fazer.
deterministic
begin
declare endereco_completo varchar(100);
select concat(customer.first_Name, ",", address.address) into endereco_completo from customer
		 inner join address using(address_id)
         where customer_id= codigo;
return endereco_completo;
end
#Mostra que é o final
$$

