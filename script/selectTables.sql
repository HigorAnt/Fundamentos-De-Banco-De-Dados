/*IMPRESSÃO DOS CURSOS EXISTENTES*/
SELECT * FROM Curso;

/*IMPRESSÃO DAS CADEIRAS OFERTADAS*/
SELECT * FROM Cadeira;

/*IMPRESSÃO DAS TURMAS OFERTADAS*/
SELECT * FROM Turma;

/*IMPRESSÃO DOS PROFESSORES EXISTENTES*/
SELECT * FROM Professor;

/*IMPRESSÃO DOS ALUNOS MATRICULADOS*/
SELECT * FROM Aluno;

/*IMPRESSÃO DE CADEIRAS E SEUS RESPECTIVOS CURSOS*/
SELECT CursoCadeira.id, 
    Curso.nome AS Curso, 
    Curso.codigo AS codigoCurso, 
    Cadeira.nome AS Cadeira, 
    Cadeira.codigo AS codigoCadeira
FROM CursoCadeira
JOIN Curso ON CursoCadeira.curso = Curso.id
JOIN Cadeira ON CursoCadeira.cadeira = Cadeira.id;

/*IMPRESSÃO DE ALUNOS E SUAS RESPECTIVAS TURMAS*/
SELECT AlunoTurma.id,
	Aluno.nome AS Nome,
	Aluno.matricula AS Matricula,
	Turma.nome AS Turma, 
	Turma.codigo AS Codigo
FROM AlunoTurma
JOIN Aluno ON AlunoTurma.aluno = Aluno.id
JOIN Turma ON AlunoTurma.turma = Turma.id;

/*IMPRESSÃO DE ALUNOS E SEUS RESPECTIVOS CURSOS*/
SELECT AlunoCurso.id,
	Aluno.nome AS Nome,
	Aluno.matricula AS Matricula,
	Curso.nome AS Curso, 
	Curso.codigo AS Codigo
FROM AlunoCurso
JOIN Aluno ON AlunoCurso.aluno = Aluno.id
JOIN Curso ON AlunoCurso.curso = Curso.id;