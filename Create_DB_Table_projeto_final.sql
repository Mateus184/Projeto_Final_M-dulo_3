DROP DATABASE IF EXISTS `Resilia`;

create database Resilia;
use Resilia;

-- Tipo de contratação
create table Contrato (
Id_Tipo varchar(64), constraint pk_id_Tipo primary key (Id_Tipo),
Modalidade varchar (64) -- (Parceira, Pós_Pago ou Pré_Pago)
);

-- Disciplina
create table Disciplina (
Id_Disciplina varchar(64), constraint pk_id_Disciplina primary key (Id_Disciplina),
Nome_Disciplina varchar(64)
);

-- Cadastro de Cursos
create Table Cursos (
Id_Curso varchar(64), constraint pk_id_Curso primary key (Id_Curso), -- PK
Nome_Curso varchar(64),
Id_Disciplina varchar(64),  constraint fk_id_Disciplina foreign key  (Id_Disciplina) references Disciplina (Id_Disciplina),-- Disciplina FK
Id_Pessoa varchar(64) -- Cadastro Pessoal FK
);

-- Cadastro de Departamento
create table Departamento (
Id_Depto varchar(64), constraint pk_id_Depto primary key (Id_Depto),-- PK
Depto varchar(64) 
);

-- Categoria

create table Categoria (
Id_Categoria varchar(64), constraint pk_id_Categoria primary key (Id_Categoria), -- PK
Tipo_Categoria varchar (64) -- (Funcionario, Aluno ou Parceiro)
);

-- Cadastro pessoal 
create table Cadastro_Pessoal (
Id_Pessoa varchar(64), constraint pk_id_pessoa primary key (Id_Pessoa),-- PK
Nome_Pessoa varchar(64),
CPF_CNPJ varchar (64),
Id_Categoria varchar(64),  constraint fk_id_Categoria foreign key  (Id_Categoria) references Categoria (Id_Categoria), -- Table categoria FK
Id_Curso varchar(64), constraint fk_id_Curso foreign key  (Id_Curso) references Cursos (Id_Curso),-- Table Cursos FK
Tipo_id varchar(64), constraint fk_id_Tipo foreign key  (Tipo_Id) references Contrato (Id_Tipo) -- Table Contrato FK
);

