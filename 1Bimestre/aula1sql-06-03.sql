-- criação de banco de dados EXERCBD01
create database ExercBD01

--abrindo o banco de dados
use ExercBD01

--criando a tabela pet
CREATE TABLE PET 
(
NumRegistro INT,
Nome VARCHAR (80),
Especie VARCHAR (25),
Raca VARCHAR(30),
Cor varchar (40),
Nascimento datetime,
Sexo varchar (9),
);


--criando banco de dados BD02
create database ExercBD02

--abrindo o banco de dados
use ExercBD02

--criando a tabela departamento
CREATE TABLE Departamento
(
CodFunc INT,
NomeDepto VARCHAR (50)
);


--criando a tabela funcionario
CREATE TABLE Funcionario
(
CodFunc INT,
NomeFunc VARCHAR (50),
CodDepto int, 
Ramal int NULL , 
Salario float,
DataAdmissao datetime,
DataCadastro datetime,
Sexo char(1)
);
------------------------------------------------------------------------------



-- criação de banco de dados Exercicios
create database Exercicios

--abrindo o banco de dados
use Exercicios

--criando a tabela exercicio A
CREATE TABLE Produtos
(
CodProduto int primary key,
Preco float, --DOUBLE É FLOAT 
Marca varchar(25) not null,
NomeProduto VARCHAR(25) not null,
Categoria varchar(15),
Localiza varchar(3)not null,
Estoque int not null,
);

--tabela exercicio B
CREATE TABLE Funcionarios
(
Nome varchar (50) not null unique,
DataNascimento date not null, 
RG varchar(12) not null unique,
CPF varchar(14) not null unique,
RM int primary key,
Funcao varchar not null,
Formacao  varchar not null,
);

--tabela exercicio C
CREATE TABLE Fornecedor
(
NomeForncedor varchar (50) not null,
Transportadora varchar (50), 
Preco float not null,
IdFornecedor int primary key,
TipoTecido varchar not null,
Peso float not null,
CNPJ varchar (18) not null,
);

--tabela exercicio D
CREATE TABLE Departamento
(
Nome varchar (30) not null,
QuantFuncionario int not null,
Setor varchar (30) not null,
Sigla varchar (3) primary key,
Funcao varchar not null,
)
