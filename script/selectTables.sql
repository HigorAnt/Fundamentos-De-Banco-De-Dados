/*IMPRESS�O DOS CURSOS EXISTENTES*/
SELECT * FROM Curso;

/*IMPRESS�O DAS CADEIRAS OFERTADAS*/
SELECT * FROM Cadeira;

/*IMPRESS�O DAS TURMAS OFERTADAS*/
SELECT * FROM Turma;

/*IMPRESS�O DOS PROFESSORES EXISTENTES*/
SELECT * FROM Professor;

/*IMPRESS�O DOS ALUNOS MATRICULADOS*/
SELECT * FROM Aluno;

/*IMPRESS�O DE CADEIRAS E SEUS RESPECTIVOS CURSOS*/
SELECT CursoCadeira.id, 
    Curso.nome AS Curso, 
    Curso.codigo AS codigoCurso, 
    Cadeira.nome AS Cadeira, 
    Cadeira.codigo AS codigoCadeira
FROM CursoCadeira
JOIN Curso ON CursoCadeira.curso = Curso.id
JOIN Cadeira ON CursoCadeira.cadeira = Cadeira.id;

/*IMPRESS�O DE ALUNOS E SUAS RESPECTIVAS TURMAS*/
SELECT AlunoTurma.id,
	Aluno.nome AS Nome,
	Aluno.matricula AS Matricula,
	Turma.nome AS Turma, 
	Turma.codigo AS Codigo
FROM AlunoTurma
JOIN Aluno ON AlunoTurma.aluno = Aluno.id
JOIN Turma ON AlunoTurma.turma = Turma.id;

/*IMPRESS�O DE ALUNOS E SEUS RESPECTIVOS CURSOS*/
SELECT AlunoCurso.id,
	Aluno.nome AS Nome,
	Aluno.matricula AS Matricula,
	Curso.nome AS Curso, 
	Curso.codigo AS Codigo
FROM AlunoCurso
JOIN Aluno ON AlunoCurso.aluno = Aluno.id
JOIN Curso ON AlunoCurso.curso = Curso.id;