/*CREATE TRIGGER limiteTurmaProfessor*/
ON Turma
AFTER INSERT
AS
BEGIN
    DECLARE @qtd_turmas INT;
    DECLARE @professor_id INT;

    SELECT @professor_id = professor FROM inserted;

    /*OBTÉM A QUANTIDADE DE CADEIRAS QUE O PROFESSOR ESTÁ MATRICULADO*/
    SELECT @qtd_turmas = COUNT(*)
    FROM Turma
    WHERE professor = @professor_id;

    /*LIMITA O PROFESSOR A MINISTRAR APENAS 4 CADEIRAS*/
    IF @qtd_turmas > 4
    BEGIN
        RAISERROR('O professor já está ministrando o número máximo de turmas permitido.', 16, 1);
        ROLLBACK TRANSACTION;
    END

    /*VERIFICAÇÃO SE O PROFESSOR MINISTRA PELO MENOS UMA TURMA*/
    IF @qtd_turmas < 1
    BEGIN
        RAISERROR('O professor deve ministrar pelo menos uma turma.', 16, 1);
        ROLLBACK TRANSACTION;
    END
END;

/*QUANTIDADE DE CURSOS QUE UM ALUNO POSSA SE MATRICULAR*/
CREATE TRIGGER limiteCursosAluno
ON AlunoCurso
AFTER INSERT, DELETE
AS
BEGIN
    DECLARE @aluno_id INT;
    DECLARE @qtd_cursos INT;

    DECLARE aluno_cursor CURSOR FOR
    SELECT aluno FROM inserted;

    OPEN aluno_cursor;
    
    FETCH NEXT FROM aluno_cursor INTO @aluno_id;
    
    WHILE @@FETCH_STATUS = 0
    BEGIN
        /*CONTAGEM DE QUANTOS ALUNOS TEM ATUALMENTE*/
        SELECT @qtd_cursos = COUNT(*)
        FROM AlunoCurso
        WHERE aluno = @aluno_id;

        /*O ALUNO DEVE ESTAR MATRICULADO EM UM SÓ CURSO*/
        IF @qtd_cursos > 1
        BEGIN
            RAISERROR('O aluno só pode estar matriculado em um único curso.', 16, 1);
            ROLLBACK TRANSACTION;
            BREAK;
        END
        
		/*VERIFICA QUE O ALUNO ESTÁ MATRICULADO EM UM CURSO*/
        IF @qtd_cursos < 1
        BEGIN
            RAISERROR('O aluno deve estar matriculado em um curso.', 16, 1);
            ROLLBACK TRANSACTION;
            BREAK;
        END

        FETCH NEXT FROM aluno_cursor INTO @aluno_id;
    END

    CLOSE aluno_cursor;
    DEALLOCATE aluno_cursor;
END;

