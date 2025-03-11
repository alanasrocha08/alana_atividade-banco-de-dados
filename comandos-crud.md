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

INSERT INTO professores (nome, area_atuacao)
VALUES
(
    'Jon Oliva ',
    'infra',
    5
);

INSERT INTO professores (nome, area_atuacao)
VALUES
(
    'Lemmy Kilmister',
    'design',
    4
);

INSERT INTO professores (nome, area_atuacao)
VALUES
(
    'Neil Peart',
    'design',
    3
);

INSERT INTO professores (nome, area_atuacao)
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
    '2007-04-17',
    8.00,
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
    '2007-11-11',
    9.00,
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
    7.00,
    5
);

INSERT INTO alunos (nome, data_nascimento, primeira_nota, segunda_nota, curso_id) VALUES
(
    'Leandro',
    '2007-11-14',
    3.00,
    5.00,
    5
);

INSERT INTO alunos (nome, data_nascimento, primeira_nota, segunda_nota, curso_id) VALUES
(
    'Vitor',
    '2007-11-12',
    6.00,
    8.00,
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

