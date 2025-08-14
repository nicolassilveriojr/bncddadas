CREATE DATABASE escola; 

USE escola;

CREATE TABLE professor (
id_professor INT NOT NULL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,  
especialidade VARCHAR(100),
salario DECIMAL(10,2),
uf CHAR(2)
);


CREATE TABLE diciplina(
id_diciplina INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
id_professor INT,
carga_horaria INT,
foreign key (id_professor) REFERENCES professor (id_professor)
);

CREATE TABLE aluno(
id_aluno INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
sexo CHAR(1),
data_nascimento DATE,
nota_final DECIMAL(4,2),
ativo BOOLEAN
);

CREATE TABLE curso(
id_curso INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
nome VARCHAR(100) NOT NULL,
carga_horario INT,
modalidade VARCHAR(50)
);

CREATE TABLE matriculado(
id_matricula INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
id_aluno INT,
id_curso INT,
data_matricula DATE,
FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno),
FOREIGN KEY (id_curso) REFERENCES curso(id_curso)
);SHOW TABLES;
 CREATE TABLE login(
 id_login INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
 id_aluno INT,
 data_hora DATETIME,
 ip VARCHAR(40),
 sucesso BOOLEAN,
 FOREIGN KEY (id_aluno) REFERENCES aluno(id_aluno)
 );
