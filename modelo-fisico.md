## Cria banco de dados

```sql
CREATE DATABASE tecinternet_escola_alana CHARACTER SET utf8mb4;
```

### Cria tabela de Cursos

```sql
CREATE TABLE cursos(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    titulo TEXT NOT NULL,
    professores_id INT NOT NULL
);
```

### Cria tabela de Professores

```sql
CREATE TABLE professores(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome TEXT NOT NULL,
    area_atuacao ENUM('design', 'desenvolvimento', 'infra'),
    cursos_id INT NOR NULL
);
```

### Cria tabela de alunos

```sql
CREATE TABLE alunos(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nome TEXT NOT NULL,
    data_nascimento VARCHAR(45) NOT NULL,
    primeira_nota INT NOT NULL,
    segunda_nota INT NOT NULL,
    cursos_id INT NOT NULL
);
```

