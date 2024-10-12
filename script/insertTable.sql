/*INSER��O DE VALORES NA TABELA Curso*/
INSERT INTO Curso(nome, codigo, semestres, cargaHoraria) VALUES('Ci�ncia da Computa��o', 101, 8, 3600);
INSERT INTO Curso(nome, codigo, semestres, cargaHoraria) VALUES('Sistemas de Informa��o', 102, 8, 3400);
INSERT INTO Curso(nome, codigo, semestres, cargaHoraria) VALUES('Redes de Computadores', 103, 6, 2600);
INSERT INTO Curso(nome, codigo, semestres, cargaHoraria) VALUES('Design Gr�fico', 104, 8, 3600);
INSERT INTO Curso(nome, codigo, semestres, cargaHoraria) VALUES('Engenharia da computa��o', 105, 10, 4200);

/*INSER��O DE VALORES NA TABELA PROFESSOR*/
INSERT INTO Professor(nome, cpf, email, codigo, formacao, area, cargaHoraria) VALUES('Rennan Dantas', '12345678911', 'renan@ufc.com', 001, 'Doutorado', 'Grafos', 40);
INSERT INTO Professor(nome, cpf, email, codigo, formacao, area, cargaHoraria) VALUES('Filipe Matos', '25896314779', 'filipe@ufc.com', 007, 'Mestrado', 'Ci�ncia da computa��o', 40);
INSERT INTO Professor(nome, cpf, email, codigo, formacao, area, cargaHoraria) VALUES('Arnaldo Barreto', '14725836946', 'arnaldo@ufc.com', 008, 'Mestrado', 'Computa��o Gr�fica', 20);

/*INSER��O DE VALORES NA TABELA CADEIRA*/
INSERT INTO Cadeira(nome, codigo, preRequisito, semestre) VALUES('Computa��o gr�fica 1', 017, '�lgebra Linear', 5);
INSERT INTO Cadeira(nome, codigo, preRequisito, semestre) VALUES('Fundamento de Banco de Dados', 011, 'Programa��o Orientada a Objetos', 3);
INSERT INTO Cadeira(nome, codigo, preRequisito, semestre) VALUES('Programa��o Orientada a Objetos', 09, 'Fundamentos de Programa��o', 2);
INSERT INTO Cadeira(nome, codigo, preRequisito, semestre) VALUES('Matem�tica B�sica', 002, '', 1);
INSERT INTO Cadeira(nome, codigo, preRequisito, semestre) VALUES('C�lculo Diferencial Integral 1', 003, '', 1);
INSERT INTO Cadeira(nome, codigo, preRequisito, semestre) VALUES('Sistemas Distribu�dos', 038, 'Redes de Computadores', 7);

/*INSER��O DE VALORES NA TABELA TURMA*/
INSERT INTO Turma(nome, codigo, capacidade, horario, dia, professor, cadeira) VALUES('Turma A01', 14, 30, '15:00-17:00', 'SEG-TER', 1, 1);
INSERT INTO Turma(nome, codigo, capacidade, horario, dia, professor, cadeira) VALUES('Turma A05', 11, 50, '13:00-15:00', 'SEG-QUA', 1, 2);
INSERT INTO Turma(nome, codigo, capacidade, horario, dia, professor, cadeira) VALUES('Turma A05', 13, 30, '17:30-19:30', 'QUI-SEX', 3, 3);
INSERT INTO Turma(nome, codigo, capacidade, horario, dia, professor, cadeira) VALUES('Turma B01', 05, 30, '15:00-17:00', 'SEG-SEX', 2, 4);
INSERT INTO Turma(nome, codigo, capacidade, horario, dia, professor, cadeira) VALUES('Turma B02', 02, 25, '15:00-17:00', 'TER-QUA', 3, 5);

/*INSER��O DE VALORES NA TABELA ALUNO*/
INSERT INTO Aluno(nome, dataDeNascimento, cpf, matricula, email, cidade, curso, semestre) VALUES('Antonio Higor', '2005-05-02', '12312312344', '552581', 'higul@ufc.com', 'Ipaporanga', 1, 4);
INSERT INTO Aluno(nome, dataDeNascimento, cpf, matricula, email, cidade, curso, semestre) VALUES('Kauan Coelho', '2003-10-05', '22255588893', '553697', 'kauan@ufc.com', 'Independ�ncia', 3, 2);
INSERT INTO Aluno(nome, dataDeNascimento, cpf, matricula, email, cidade, curso, semestre) VALUES('Wesley Costa', '2004-06-28', '98765432100', '568123', 'wesley@ufc.com', 'Novo Oriente', 5, 5);

/*INSER��O DE DADOS NA TABELA CURSOCADEIRA*/
INSERT INTO CursoCadeira(curso, cadeira) VALUES(1, 1);
INSERT INTO CursoCadeira(curso, cadeira) VALUES(1, 2);
INSERT INTO CursoCadeira(curso, cadeira) VALUES(1, 3);
INSERT INTO CursoCadeira(curso, cadeira) VALUES(2, 1);
INSERT INTO CursoCadeira(curso, cadeira) VALUES(2, 3);
INSERT INTO CursoCadeira(curso, cadeira) VALUES(2, 5);
INSERT INTO CursoCadeira(curso, cadeira) VALUES(4, 1);
INSERT INTO CursoCadeira(curso, cadeira) VALUES(4, 4);
INSERT INTO CursoCadeira(curso, cadeira) VALUES(4, 5);
