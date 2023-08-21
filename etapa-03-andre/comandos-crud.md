# Comandos da etapa 3 do exercício de banco de dados

## CRUD - Consultas

### 1) Faça uma consulta que mostre os alunos que nasceram antes do ano 2009

```sql
SELECT nome AS "Nome", data_nascimento AS "Data de Nascimento" FROM alunos
	WHERE data_nascimento < "2009-01-01"
	ORDER BY data_nascimento;
```

![Print do resultado da consulta](resultado-01.png)

### 2) Faça uma consulta que calcule a média das notas de cada aluno e as mostre com duas casas decimais.

```sql
SELECT
    nome AS Nome,
    CAST(((nota_1 + nota_2) / 2) AS DEC(6, 2)) AS Média
FROM alunos;
```

![Print do resultado da consulta](resultado-02.png)

### 3) Faça uma consulta que calcule o limite de faltas de cada curso de acordo com a carga horária. Considere o limite como 25% de carga horária. Classifique em ordem crescente pelo título do curso.

```sql

```