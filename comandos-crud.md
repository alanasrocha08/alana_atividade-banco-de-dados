## Criar relacionamento entre as tabelas

### Cadastrando 5 cursos

```sql

INSERT INTO cursos (nome, carga_horaria)
VALUES
(
    'Front-End',
    40
);

INSERT INTO cursos (nome, carga_horaria)
VALUES
(
    'Back-End',
    80
);

INSERT INTO cursos (nome, carga_horaria)
VALUES
(
    'UX/UI Design',
    30
);

INSERT INTO cursos (nome, carga_horaria)
VALUES
(
    'Figma',
    10
);

INSERT INTO cursos (nome, carga_horaria)
VALUES
(
    'Redes de computadores',
    100

);
```

### Cadastrando 5 professores

```sql

INSERT INTO professores (nome, area_atuacao, curso_id)
VALUES
(
    'Jon Oliva ',
    'infra',
    5
);

INSERT INTO professores (nome, area_atuacao, curso_id)
VALUES
(
    'Lemmy Kilmister',
    'design',
    4
);

INSERT INTO professores (nome, area_atuacao, curso_id)
VALUES
(
    'Neil Peart',
    'design',
    3
);

INSERT INTO professores (nome, area_atuacao, curso_id)
VALUES
(
    'Ozzy Osbourne',
    'desenvolvimento',
    2
);

INSERT INTO professores (nome, area_atuacao, curso_id)
VALUES
(
    'David Gilmourne',
    'desenvolvimento',
    1
);

UPDATE cursos SET professor_id = 5 WHERE id = 1;

UPDATE cursos SET professor_id = 4 WHERE id = 2;

UPDATE cursos SET professor_id = 3 WHERE id = 3;

UPDATE cursos SET professor_id = 2 WHERE id = 4;

UPDATE cursos SET professor_id = 1 WHERE id = 5;

```

### Cadastrando 10 alunos 

```sql
INSERT INTO alunos (nome, data_nascimento, primeira_nota, segunda_nota, curso_id) VALUES
(
    'Alana',
    '2008-02-13',
    7.00,
    6.00,
    1
);

INSERT INTO alunos (nome, data_nascimento, primeira_nota, segunda_nota, curso_id) VALUES
(
    'Júlia',
    '2007-05-17',
    8.50,
    7.00,
    2
);

INSERT INTO alunos (nome, data_nascimento, primeira_nota, segunda_nota, curso_id) VALUES
(
    'Nathalya',
    '2008-04-19',
    9.00,
    10.00,
    1
);

INSERT INTO alunos (nome, data_nascimento, primeira_nota, segunda_nota, curso_id) VALUES
(
    'Clara',
    '2008-04-18',
    6.00,
    10.00,
    2
);

INSERT INTO alunos (nome, data_nascimento, primeira_nota, segunda_nota, curso_id) VALUES
(
    'Isabela',
    '2007-09-11',
    9.20,
    5.00,
    3
);

INSERT INTO alunos (nome, data_nascimento, primeira_nota, segunda_nota, curso_id) VALUES
(
    'Ana Clara',
    '2008-05-17',
    10.00,
    7.00,
    4
);

INSERT INTO alunos (nome, data_nascimento, primeira_nota, segunda_nota, curso_id) VALUES
(
    'Sofia',
    '2007-11-14',
    7.00,
    7.10,
    5
);

INSERT INTO alunos (nome, data_nascimento, primeira_nota, segunda_nota, curso_id) VALUES
(
    'Leandro',
    '2007-11-14',
    3.00,
    5.35,
    5
);

INSERT INTO alunos (nome, data_nascimento, primeira_nota, segunda_nota, curso_id) VALUES
(
    'Vitor',
    '2007-11-12',
    6.00,
    1.50,
    1
);

INSERT INTO alunos (nome, data_nascimento, primeira_nota, segunda_nota, curso_id) VALUES
(
    'Ana Luisa',
    '2007-10-27',
    8.00,
    8.00,
    1
);
```

---

### CRUD - Consultas

#### 1 - Alunos que nasceram antes de 2009

```sql
SELECT nome, data_nascimento FROM alunos
WHERE data_nascimento < 2009;
```

#### 2 - Média da notas de cada aluno

```sql
SELECT nome, ROUND((primeira_nota + segunda_nota) / 2, 2) AS "Média das notas"
FROM alunos;
```

#### 3 - Limite de faltas

```sql
SELECT 
    cursos.nome AS Curso,
    cursos.carga_horaria AS 'Carga horária',
    (carga_horaria * 0.25) AS 'Limite de faltas'
FROM cursos
ORDER BY Curso ASC; 
```

#### 4 - Mostrar Professores que são de "desenvolvimento"

```sql
SELECT nome FROM professores
WHERE area_atuacao = 'desenvolvimento';
```

#### 5 - Quantidade de professores que cada área possui

```sql
SELECT area_atuacao AS Área, 
COUNT(id) AS "Qtd de Professores"
FROM professores
GROUP BY area_atuacao;
```

#### 6 - nome dos alunos, o título e a carga horária dos cursos que fazem

```sql
SELECT 
    alunos.nome AS Alunos,
    cursos.nome AS Curso,
    cursos.carga_horaria AS 'Carga Horária'
FROM alunos
    INNER JOIN cursos ON alunos.curso_id = cursos.id
ORDER BY Alunos ASC;
```

#### 7 - nome dos professores e o título do curso que lecionam.

```sql
SELECT 
    professores.nome AS Professor,
    cursos.nome AS Curso
FROM professores
    INNER JOIN cursos ON professores.curso_id = cursos.id
ORDER BY Professor ASC;
```

#### 8 - nome dos alunos, o título dos cursos que fazem, e o professor de cada curso.

```sql
SELECT 
    alunos.nome AS Aluno,
    cursos.nome AS Curso,
    professores.nome AS Professor
FROM alunos
    INNER JOIN cursos ON alunos.curso_id = cursos.id
    INNER JOIN professores ON cursos.id = professores.curso_id
ORDER BY Aluno ASC;
```

#### 9 - Quantidade de alunos que cada curso possui.

```sql
SELECT 
    cursos.nome AS Curso,
    COUNT(alunos.id) AS "Quantidade de Alunos"
FROM alunos
    INNER JOIN cursos ON alunos.curso_id = cursos.id
GROUP BY cursos.nome
ORDER BY "Quantidade de Alunos" DESC;
```

#### 10 - Nome dos alunos, suas notas, médias, e o título dos cursos que fazem (Somente de Front-End e Back-End).

```sql
SELECT 
    alunos.nome AS Aluno,
    alunos.primeira_nota AS 'Nota 1',
    alunos.segunda_nota AS 'Nota 2',
    ROUND((primeira_nota + segunda_nota) / 2, 2) AS Media,
    cursos.nome AS Curso
FROM alunos
    INNER JOIN cursos ON alunos.curso_id = cursos.id
WHERE cursos.nome IN ('Front-End', 'Back-End')
ORDER BY alunos.nome ASC;
```

#### 11 - Alterar o nome do curso de Figma para Adobe XD e sua carga horária de 10 para 15.

```sql
UPDATE cursos SET nome = 'Adobe XD'
WHERE id = 4

UPDATE cursos SET carga_horaria = 15
WHERE id = 4 
```

#### 12 -  Excluir um aluno do curso de Redes de Computadores e um aluno do curso de UX/UI.

```sql
DELETE FROM alunos 
WHERE curso_id = 5 LIMIT 1;

DELETE FROM alunos 
WHERE curso_id = 3 LIMIT 1;
```

#### 13 -  Lista de alunos atualizada e o título dos cursos que fazem, classificados pelo nome do aluno.

```sql
SELECT 
    alunos.nome AS Aluno,
    cursos.nome AS Curso
FROM alunos
INNER JOIN cursos ON alunos.curso_id = cursos.id
ORDER BY Aluno ASC;
```

#### DESAFIOOO

##### 1 - Criar uma consulta que calcule a idade do aluno

```sql
SELECT 
    nome AS Aluno,
    TIMESTAMPDIFF(YEAR, data_nascimento, CURDATE()) AS Idade
FROM alunos;
```

##### 2 - Calcular a média das notas de cada aluno e mostre somente os alunos que tiveram a média maior ou igual a 7.

```sql
SELECT 
    nome AS Aluno,
    ROUND((primeira_nota + segunda_nota) / 2, 2) AS Media
FROM alunos
WHERE (primeira_nota + segunda_nota) / 2 >= 7
ORDER BY Media DESC;
```

##### 3 - calcular a média das notas de cada aluno e mostre somente os alunos que tiveram a média menor que 7.

```sql
SELECT 
    nome AS Aluno,
    ROUND((primeira_nota + segunda_nota) / 2, 2) AS Media
FROM alunos
WHERE (primeira_nota + segunda_nota) / 2 < 7
ORDER BY Media DESC;
```




