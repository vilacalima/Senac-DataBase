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
      
#Inserindo dados na tabela de paciente
insert into pacientes (nome, idade, cidade, cpf, doenca)
				value ('Ana', 20,'Florianopolis', '20000200000', 'gripe');
insert into pacientes (nome, idade, cidade, cpf, doenca)
				value ('Paulo', 24,'Palhoca', '20000220000', 'fratura');
insert into pacientes (nome, idade, cidade, cpf, doenca)
				value ('Lucia', 30,'Biguacu', '22000200000', 'tendinite');
insert into pacientes (nome, idade, cidade, cpf, doenca)
				value ('Carlos', 28,'Joinville', '11000110000', 'sarampo');
                
#Inserindo dados na tabela funcionario
insert into funcionarios(nome, idade, cidade, salario, cpf)
					values('Rita', 32, 'Sao Jose', 1200, '20000100000'),
						  ('Maria', 55, 'Palhoca', 1200, '30000110000'),
						  ('Caio', 45, 'Florianopolis', 1100, '41000100000'),
						  ('Carlos', 44, 'Florianopolis', 1200, '51000110000'),
						  ('Paula', 33, 'Florianopolis', 2500, '61000111000');
                          
#Inserindo dados na tabela Consultas
insert into consultas(fk_codm, fk_codp, data_Consulta, hora)
				values  (1, 1, '2006/06/12', '14:00'),
					    	(1, 4, '2006/06/13', '10:00'),
						    (2, 1, '2006/06/13', '9:00'),
						    (2, 2, '2006/06/13', '11:00'),
						    (2, 3, '2006/06/14', '14:00'),
						    (2, 4, '2006/06/14', '17:00'),
						    (3, 1, '2006/06/19', '18:00'),
						    (3, 3, '2006/06/12', '10:00'),
						    (3, 4, '2006/06/19', '13:00'),
						    (4, 4, '2006/06/20', '13:00'),
						    (4, 4, '2006/06/22', '19:30');
