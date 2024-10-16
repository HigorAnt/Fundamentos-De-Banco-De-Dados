/*CRIA플O DA TABELA CURSO*/
CREATE TABLE Curso(
	id INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(40) NOT NULL,
	codigo INT UNIQUE NOT NULL, 
	semestres INT NOT NULL,
	cargaHoraria INT NOT NULL
);

/*CRIA플O DA TABELA PROFESSOR*/
CREATE TABLE Professor(
	id INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	cpf VARCHAR(11) NOT NULL,
	email VARCHAR(50) NOT NULL,
	codigo INT UNIQUE NOT NULL,
	formacao VARCHAR(30) NOT NULL,
	area VARCHAR(30) NOT NULL, 
	cargaHoraria INT NOT NULL
);

/*CRIA플O DA TABELA ALUNO*/
CREATE TABLE Aluno(
	id INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(100) NOT NULL,
	dataDeNascimento DATE NOT NULL,
	cpf VARCHAR(11) NOT NULL,
	matricula VARCHAR(6) UNIQUE NOT NULL,
	email VARCHAR(50) NOT NULL,
	cidade VARCHAR(30) NOT NULL,
	curso INT,
	semestre INT NOT NULL,
	CONSTRAINT AlunoCur FOREIGN KEY(curso) REFERENCES Curso(id)
);

/*CRIA플O DA TABELA CADEIRA*/
CREATE TABLE Cadeira(
	id INT IDENTITY(1,1) PRIMARY KEY,
	nome VARCHAR(60) NOT NULL,
	codigo INT UNIQUE NOT NULL,
	preRequisito VARCHAR(60) NOT NULL, 
	semestre INT NOT NULL,
);

/*CRIA플O DA TABELA TURMA*/
CREATE TABLE Turma(
	id INT IDENTITY(1,1) PRIMARY KEY, 
	nome VARCHAR(100) NOT NULL, 
	codigo INT UNIQUE NOT NULL, 
	capacidade INT NOT NULL, 
	horario VARCHAR(11) NOT NULL,
	dia VARCHAR(50) NOT NULL,
	professor INT,
	cadeira INT,
    CONSTRAINT TurmaProfessor FOREIGN KEY (professor) REFERENCES Professor(id),
	CONSTRAINT TurmaCadeira FOREIGN KEY(cadeira) REFERENCES Cadeira(id),
);

/*CRIA플O DA TABELA QUE RELACIONA CADEIRA COM SEUS RESPECTIVOS CURSOS*/
CREATE TABLE CursoCadeira(
	id INT IDENTITY(1,1),
	curso INT,
	cadeira INT,
	CONSTRAINT cadeiraC FOREIGN KEY(cadeira) REFERENCES Cadeira(id),
	CONSTRAINT cursoC FOREIGN KEY(curso) REFERENCES Curso(id)
);

/*CRIA플O DA TABELA QUE RELACIONA ALUNO COM SUAS TURMAS*/
CREATE TABLE AlunoTurma(
	id INT IDENTITY(1,1),
	aluno INT,
	turma INT,
	CONSTRAINT alunoT FOREIGN KEY(aluno) REFERENCES Aluno(id),
	CONSTRAINT turmaA FOREIGN KEY(turma) REFERENCES Turma(id)
);

/*CRIA플O DA TABELA QUE RELACIONA ALUNO COM CURSO*/
CREATE TABLE AlunoCurso(
	id INT IDENTITY(1,1),
	aluno INT,
	curso INT,
	CONSTRAINT alunoC FOREIGN KEY(aluno) REFERENCES Aluno(id),
	CONSTRAINT cursoA FOREIGN KEY(curso) REFERENCES Curso(id)
);