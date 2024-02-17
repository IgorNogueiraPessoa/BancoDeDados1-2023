-- criar bd 
CREATE DATABASE clinica_medica;

-- abrir bd 
use clinica_medica;

---------------------------------------------------------

CREATE TABLE paciente
(
numpaciente int identity(1,1) PRIMARY KEY,
nomepaciente varchar (60) NOT NULL,
estcivil varchar (20) NOT NULL,
rg varchar (12) NOT NULL,
telefone varchar (15) NOT NULL,
endereco varchar (60) NOT NULL,
sexo varchar (10) NOT NULL,
datanasc date NOT NULL,
);


---------------------------------------------
CREATE TABLE convenio
(
numpaciente int,
tipoconvenio varchar(25) NOT NULL,
nomeconvenio varchar (50) NOT NULL,

foreign key (numpaciente) references paciente
);

------------------------------------------



CREATE TABLE medico
(
idmedico int identity(1,1) PRIMARY KEY,
nomemedico varchar (60) NOT NULL,
);

-----------------------------------------------

CREATE TABLE especialidade
(
idmedico int,
descricao varchar (100) NOT NULL,

foreign key (idmedico) references medico,
);


-----------------------------------------------



CREATE TABLE consulta
(
numconsulta int identity(1,1) PRIMARY KEY,
numpaciente int NOT NULL,
idmedico int NOT NULL,
dataconsulta date NOT NULL,
diagnostico varchar (350),

foreign key (numpaciente) references paciente,
foreign key (idmedico) references medico,
);

-----------------------------------------------

CREATE TABLE exame
(
numconsulta int NOT NULL,
exame varchar (30) NOT NULL,
dataexame date NOT NULL,
resultado varchar (50) NOT NULL,

foreign key (numconsulta) references consulta,
);
