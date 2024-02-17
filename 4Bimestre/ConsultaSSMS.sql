-- criar bd 
CREATE DATABASE cinema_shoppingxxx;

-- abrir bd 
use cinema_shoppingxxx;

---------------------------------------------------------
CREATE TABLE sala
(
Num_sala int identity(1,1) PRIMARY KEY,
QuantCadeiras int NOT NULL,
);


------------------------------------------

CREATE TABLE filme
(
IdFilme int identity(1,1) PRIMARY KEY,
nomefilme varchar (60) NOT NULL,
genero varchar (60) NOT NULL,
duracao varchar (20) NOT NULL,
);


---------------------------------------------

CREATE TABLE exibição
(
TipoSessao varchar (60) NOT NULL,
DataExibicao date NOT NULL,
HorarioExibicao time NOT NULL,
Num_sala int NOT NULL,          
IdFilme int NOT NULL, 

foreign key (Num_sala) references sala,
foreign key (IdFilme) references filme
);


-----------------------------------------------

-- criar bd 
CREATE DATABASE imobiliaria;

-- abrir bd 
use imobiliaria;

---------------------------------------------

CREATE TABLE condominio
(
IdCondominio int identity(1,1) PRIMARY KEY,
Endereco varchar (100) NOT NULL,
QuantCasas int NOT NULL,
);

CREATE TABLE locatario
(
idLocatario int identity(1,1) PRIMARY KEY,
nome varchar (100) NOT NULL,
cpf varchar (14) NOT NULL,
tel varchar (12) NOT NULL,
);

CREATE TABLE propriedade
(
numpropriedade int identity(1,1) PRIMARY KEY,
idCondominio int NOT NULL,
IdLocatario int NOT NULL,
quantresidentes int NOT NULL,
metragemquadrada int NOT NULL,

foreign key (idCondominio) references condominio,
foreign key (IdLocatario) references locatario
);

CREATE TABLE proprietario
(
IdProprietario int identity(1,1) PRIMARY KEY,
nome varchar (100) NOT NULL,
cpf varchar (14) NOT NULL,
tel varchar (12) NOT NULL,
);

CREATE TABLE possui
(
numpropriedade int NOT NULL,
IdProprietario int NOT NULL,

foreign key (numpropriedade) references propriedade,
foreign key (IdProprietario) references proprietario
);
