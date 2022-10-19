use sakila;

select*from actor;

desc actor;
desc payment;

#Selecionando pelo primeiro nome e ultimo nome da tabela ator
select first_name, last_name from actor;

#Selecionando pelo primeiro nome e ultimo nome e ordenando pelo primeiro nome
select first_name, last_name from actor order by first_name desc;

#Selecionando pelo primeiro nome e ultimo nome e ordenando se tiver a letra A no primeiro nome
select first_name, last_name from actor where first_name like 'A%' order by first_name;

#Selecionando pelo primeiro nome e calculando quantas ocorrencias tem que se inicia com a letra A
select count(*) from actor where first_name like 'A%';

#Selecionando pelo primeiro nome e ultimo nome e ordenando se tiver a letra A e 3 letra G no primeiro nome
select first_name, last_name from actor where first_name like 'A_G%' order by first_name;

#Selecionando pelo primeiro nome e ultimo nome e ordenando se não tiver a letra A no primeiro nome
select first_name, last_name from actor where first_name not like 'A%' order by first_name;

#Alterando o titulo da coluna se for duas palavras tem que colocar entre aspas
select first_name as nome, last_name as sobrenome from actor;

#Selecionando a tabela de pagamentos e pesquisando pelo cliente = 1
select * from payment where customer_id = 1;

#Selecionando a tabela de pagamentos e somando os gastos do cliente = 1
select sum(amount) from payment where customer_id=1;

#Selecionando a tabela payment e customer e pesquisando pelo customer_id=1 e relacionando as duas tabelas após o and
select * from payment, customer where payment.customer_id=1 and payment.customer_id = customer.customer_id;

#Selecionando a tabela customer e payment pesquisando na tabela payment pela tabela customer e relacionando pela tabela payment e customer
select customer.first_name, payment.amount from payment, customer where payment.customer_id = 1 and payment.customer_id = customer.customer_id;

#Selecionando a tabela customer e payment pesquisando na tabela payment pela tabela customer e relacionando pela tabela payment e customer com o comando JOY
#Quando o FK tem o mesmo nome usa o using()
select customer.first_name, payment.amount from payment inner join customer using(customer_id);

#Selecionando a tabela customer e payment pesquisando na tabela payment pela tabela customer e relacionando pela tabela payment e customer com o comando JOIN
#Quando tem nome diferente usa o on para comparar
select customer.first_name, payment.amount from payment inner join customer on payment.customer_id = customer_id;

#Selecionando a tabela customer e payment pesquisando na tabela payment pela tabela customer e relacionando pela tabela payment e customer com o comando JOIN
#Fazendo a soma dos gastos por cliente
select customer.first_name, sum(payment.amount) from payment inner join customer on payment.customer_id = customer.customer_id group by customer.first_name;

#Selecionando a tabela customer e payment pesquisando na tabela payment pela tabela customer e relacionando pela tabela payment e customer com o comando JOIN
#Fazendo a soma dos gastos por cliente entre duas datas
select customer.first_name, sum(payment.amount) from payment inner join customer on payment.customer_id = customer.customer_id where payment.payment_date >='2005-07-01' and payment.payment_date <='2005-08-30' group by customer.first_name;

#Selecionando a tabela customer e payment pesquisando na tabela payment pela tabela customer e relacionando pela tabela payment e customer com o comando JOIN
#Fazendo a soma dos gastos por cliente entre duas datas usando between para verificar entre as duas incluindo as duas datas limite
select customer.first_name, sum(payment.amount) from payment inner join customer on payment.customer_id = customer.customer_id where payment.payment_date between'2005-07-01' and '2005-08-30' group by customer.first_name;
