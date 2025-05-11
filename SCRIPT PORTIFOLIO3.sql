create database universidade;

use universidade;

create table aluno (id_aluno int primary key auto_increment not null unique,
nome char (45) not null,
cpf char (12) not null,
email char (45) not null,
matricula char (45) not null
);

create table professores (id_professores int primary key auto_increment not null unique,
nome char (45) not null,
cpf char (12) not null,
email char (45) not null,
area_atuacao char (45) not null
);

create table curso (id_curso int primary key auto_increment not null unique,
nome_curso char (45) not null,
duracao char (45) not null
);

create table disciplina (id_disciplina int primary key auto_increment not null unique,
 caraga_horaria decimal (45) not null,
 id_curso integer, foreign key (id_curso) references curso (id_curso)
);

create table turma (id_turma int primary key auto_increment not null unique, 
semestre char (45) not null, 
id_professores integer, foreign key (id_professores) references professores (id_professores),
id_disciplina integer, foreign key (id_disciplina) references disciplina (id_disciplina)
);

create table nota (id_aluno int, id_turma int,
nota1 decimal (5,2) not null,
nota2 decimal (5,2) not null,
media decimal (5,2) not null,
primary key (id_aluno, id_turma),
 foreign key (id_aluno) references aluno (id_aluno),
 foreign key (id_turma) references turma (id_turma)
);






