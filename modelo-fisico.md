## Cria banco de dados

```sql
CREATE DATABASE tecinternet_escola_alana CHARACTER SET utf8mb4;
```


### Cria tabela de Cursos

```sql
CREATE TABLE cursos(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome TEXT NOT NULL,
    carga_horaria INT NOT NULL,
    professor_id INT NOT NULL
);

```

### Cria tabela de Professores

```sql
CREATE TABLE professores(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome TEXT NOT NULL,
    area_atuacao ENUM('design', 'desenvolvimento', 'infra'),
    curso_id INT NOT NULL
);
```

### Cria tabela de alunos

```sql
CREATE TABLE alunos(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome TEXT NOT NULL,
    data_nascimento VARCHAR(45) NOT NULL,
    primeira_nota DECIMAL(4,2) NOT NULL,
    segunda_nota DECIMAL(4,2) NOT NULL,
    curso_id INT NOT NULL
);
```