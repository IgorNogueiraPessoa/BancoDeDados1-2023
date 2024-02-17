-- criação de banco de dados EXERCBD01
create database ExercBD01

--abrindo o banco de dados
use ExercBD01

--criando a tabela pet
CREATE TABLE Pet
(
NumRegistro INT,
Nome VARCHAR (80),
Especie VARCHAR (25),
Raca VARCHAR(30),
Cor varchar (40),
Nascimento datetime,
Sexo varchar (9),
);

INSERT INTO Pet (NumRegistro, Nome, Especie, Raca, Cor, Nascimento, Sexo) VALUES
 (1,'Juninho','Cachorro','Shih-tzu','Preto','12/06/2014','Macho'),
 (2,'Astolfo','Cachorro','Boxer','Castanho','07/04/2018','Macho'),
 (3,'Ruindade','Gato','SRD','Cinza','12/12/2016','Macho'), --srd = sem raça definida, nome 'cientiífico' pra vira lata.--
 (4,'Estrela','Cachorro','Pinscher','Preto','07/08/2020','Fêmea'),
 (5,'Stuart','Hamster','Sírio','Castanho-escuro','14/01/2019','Macho'),
 (6,'Matraca','Papagaio','Papagaio-verdadeiro','Verde','23/11/2021','Macho'),
 (7,'Princesa','Cachorro','Pit-Bull','Cinza','13/03/2022','Fêmea'),
 (8,'Scoob','Cachorro','Dogue Alemão','Marrom','24/07/2017','Macho'),
 (9,'Buzerá','Gato','SRD','Laranja','10/10/2021','Macho'),
 (10,'Mel','Cachorro','Presa Canario','Cinza-Listrado','17/05/2015','Fêmea');

 SELECT * FROM Pet

 --Criação banco de dados EXERCBD02--
 create database ExercBD02

 use ExercBD02

 --Tabela departamento 
 Create Table Departamento 
 (
 Nome VARCHAR (40),
 Sigla VARCHAR (4),
 QuantFunc INT,
 );
 INSERT INTO Departamento (Nome, Sigla, QuantFunc) VALUES
 ('Marketing' , 'MKTG', 2),
 ('Recursos Humanos', 'RH', 2),
 ('Tecnologia da Informação', 'TI', 2),
 ('Financeiro', 'FI', 2),
 ('Administração', 'ADM', 2);

 SELECT * FROM Departamento
 
 --Tabela Funcionarios
  Create Table Funcionarios
 (
 Nome VARCHAR (15),
 UltimoSobrenome VARCHAR (15),
 RegistroFunc int primary key,
 Salario float,
 Departamento VARCHAR (30),
 );

INSERT INTO Funcionarios (Nome, UltimoSobrenome,RegistroFunc,Salario,Departamento) VALUES
('Edsom','Lima',223,1500.00,'Marketing'),
('Valdimar','Pires',224,1500.00,'Marketing'),
('Ednaldo','Pereira',112,1650.00,'Recursos Humanos'),
('Jussara','Cavalcante',113,1650.00,'Recursos Humanos'),
('Jeff','Fernandes',334,2100.00,'Tecnologia da Informação'),
('Roger','Silva',335,2100.00,'Tecnologia da Infromação'),
('Milton','Nunes',446,1800.00,'Financeiro'),
('Carlos','Andrade',448,1800.00,'Financeiro'),
('Maria','Souza',886,1350.00,'Administração'),
('Paula','Gomes',887,1350.00,'Administração');

SELECT * FROM Funcionarios