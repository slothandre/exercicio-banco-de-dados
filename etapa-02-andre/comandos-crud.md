# Comandos da etapa 2 do exercício

## CREATE

### Cursos

```sql
INSERT INTO cursos (titulo, carga_horaria)
	VALUES
    	("Front-End", 40),
        ("Back-End", 80),
        ("UX/UI Design", 30),
        ("Figma", 10),
        ("Redes de Computadores", 100);
```

### Professores

```sql
INSERT INTO professores (nome, area_atuacao, cursos_id)
	VALUES
    	("Jon Oliva", 3, 5),
    	("Lemmy Kilmister", 1, 4),
        ("Neil Peart", 1, 3),
        ("Ozzy Osbourne", 2, 2),
        ("David Gilmour", 2, 1);
```

### Alunos

```sql
INSERT INTO alunos (nome, data_nascimento, nota_1, nota_2, cursos_id)
	VALUES
    	("Mocotó", "2004-06-18", 9, 8, 2),
        ("Tiuliel", "1991-02-25", 10, 10, 4),
        ("Pelipe", "2003-01-01", 4, 6, 5),
        ("Valeuska", "2002-02-02", 9, 8, 2),
        ("Bueno", "2010-03-03", 2, 3, 5),
        ("Moura", "2004-04-04", 7, 10, 3),
        ("Barbarosa", "2004-04-04", 7, 10, 3),
        ("Leandro do Arrocha", "1932-05-05", 6, 9, 4),
        ("Jhon", "2004-06-06", 8, 10, 1),
        ("Greguinho", "2004-07-07", 4, 9, 1);
```