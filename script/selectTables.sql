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
    Curso.nome AS nomeCurso, 
    Curso.codigo AS codigoCurso, 
    Cadeira.nome AS nomeCadeira, 
    Cadeira.codigo AS codigoCadeira
FROM CursoCadeira
JOIN Curso ON CursoCadeira.curso = Curso.id
JOIN Cadeira ON CursoCadeira.cadeira = Cadeira.id;

