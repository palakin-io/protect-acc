CREATE DATABASE Proyecto
GO

USE Proyecto
GO


CREATE TABLE Generos
(
	Cod_genero varchar(10) primary key,
	Genero_Nom Varchar(30) not null
);

CREATE TABLE Editoriales
(
	Editorial_Cod varchar(10) primary key,
	Editorial_Nom varchar(30),
	Phone varchar(10)
);

CREATE TABLE Autores
(
	Autor_Cod varchar(10) primary key,
	Autor_Nom varchar(30)
);

CREATE TABLE Libros
(
	Codigo_libro int primary key identity(1,1),
	Nombre varchar(30) not null,
	Cod_Genero varchar(10) not null,
	Autor_Cod Varchar(10) not null,
	Editorial_Cod Varchar(10) not null,
	FOREIGN KEY (Autor_Cod) REFERENCES Autores(Autor_Cod),
	FOREIGN KEY (Cod_Genero) REFERENCES Generos(Cod_Genero) ON DELETE CASCADE,
	FOREIGN KEY (Editorial_Cod) REFERENCES Editoriales(Editorial_Cod),
	CONSTRAINT UQ_NOMBRE UNIQUE (Nombre)
);