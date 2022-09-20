#Criando Tabela de Produto
create  table produto (
	cod_prod int primary key auto_increment, 
    unit_prod char(3) not null,
    desc_prod varchar(20) not null,
    val_unit decimal(9,2) 
);

#Criando Tabela do Vendedor
create table vendedor (
	cod_vend int primary key auto_increment,
    nome_vend varchar(40) not null,
    sal_fixo decimal(9,2),
    faixa_comiss char(1)
);

#Mostra as descrições da tabela
describe vendedor;

#Criando a tabela pedido
create table pedido(
      num_ped int primary key auto_increment,
      prazo_entr  int not null,
      fk_cod_cli int,
      fk_cod_vend int,
      foreign key(fk_cod_cli) references cliente(cod_cli),
      foreign key(fk_cod_vend) references vendedor(cod_vend)
      );

#Criando a tabela item_pedido
create table item_pedido (
    qtd_ped int not null,
    fk_num_ped int,
    fk_cod_prod int,
    foreign key(fk_num_ped) references pedido(num_ped),
    foreign key(fk_cod_prod) references produto(cod_prod)
);

#Comando para inserir dados do cliente
insert into cliente (nome_cli,endereco,cidade,cep,uf) values('Beatriz',"av' santo amaro,300",'São Paulo','01002003','SP');
insert into vendedor (nome_vend,sal_fixo,faixa_comiss) values('João da Silva',1250.23,'A');
insert into vendedor (nome_vend,sal_fixo,faixa_comiss) values('Cleiton Antunes',900.45,'A');
insert into produto (unit_prod,desc_prod,val_unit) values ('PC','Caneta',3.45);
insert into produto (unit_prod,desc_prod,val_unit) values ('PC','Lapis',2.67);
insert into pedido (prazo_entr,fk_cod_cli,fk_cod_vend) values (10,1,1);
insert into item_pedido (qtd_ped,fk_num_ped,fk_cod_prod) values (5,2,1);
