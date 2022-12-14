# O paciente Paulo mudou-se para Ilhota
update Pacientes set cidade = 'Ilhota' where codp=2;

#A consulta do médico 1 com o paciente 4 passou para às 12:00 horas do dia 4 de Julho de 2006
update Consultas set data_Consulta ='2006/07/04', hora = '12:00' where num_consulta =2;

#A paciente Ana fez aniversário e sua doença agora é hepatite
update pacientes set idade = idade+1, doenca='hepatite' where codp=1; 

#A consulta do médico Pedro (codm = 3) com o paciente Carlos (codp = 4) passou para uma hora e meia depois
update consultas set hora = addtime(hora,'1:30') where num_consulta=9;

#O funcionário Carlos (codf = 4) deixou a clínica
delete from funcionarios where codf=4;
set SQL_SAFE_UPDATES=0;

#As consultas marcadas após as 19 horas foram canceladas
delete from consultas where hora >='19:00';

#Os pacientes com câncer ou idade inferior a 10 anos deixaram a clínica
delete from paciente where doenca like 'cancer' or idade <=10;

#Os médicos que residem em Biguacu e Palhoca deixaram a clínica
delete from medicos where cidade in ('Biguacu', 'Palhoca');
