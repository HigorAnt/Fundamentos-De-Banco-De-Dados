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
    Curso.nome AS nomeCurso, 
    Curso.codigo AS codigoCurso, 
    Cadeira.nome AS nomeCadeira, 
    Cadeira.codigo AS codigoCadeira
FROM CursoCadeira
JOIN Curso ON CursoCadeira.curso = Curso.id
JOIN Cadeira ON CursoCadeira.cadeira = Cadeira.id;

