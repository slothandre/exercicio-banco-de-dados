-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Ago-2023 às 16:40
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `tecinternet_escola_andre`
--
CREATE DATABASE IF NOT EXISTS `tecinternet_escola_andre` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `tecinternet_escola_andre`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` tinyint(4) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `data_nascimento` date NOT NULL,
  `nota_1` decimal(4,2) NOT NULL,
  `nota_2` decimal(4,2) NOT NULL,
  `cursos_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `data_nascimento`, `nota_1`, `nota_2`, `cursos_id`) VALUES
(11, 'Mocotó', '2004-06-18', 9.00, 8.00, 2),
(12, 'Tiuliel', '1991-02-25', 10.00, 10.00, 4),
(14, 'Valeuska', '2002-02-02', 9.00, 8.00, 2),
(15, 'Bueno', '2010-03-03', 2.00, 3.00, 5),
(17, 'Barbarosa', '2004-04-04', 7.00, 10.00, 3),
(18, 'Leandro do Arrocha', '1932-05-05', 6.00, 9.00, 4),
(19, 'Jhon', '2004-06-06', 8.00, 10.00, 1),
(20, 'Greguinho', '2004-07-07', 4.00, 9.00, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cursos`
--

CREATE TABLE `cursos` (
  `id` tinyint(4) NOT NULL,
  `titulo` varchar(30) NOT NULL,
  `carga_horaria` tinyint(4) NOT NULL,
  `professores_id` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cursos`
--

INSERT INTO `cursos` (`id`, `titulo`, `carga_horaria`, `professores_id`) VALUES
(1, 'Front-End', 40, 5),
(2, 'Back-End', 80, 4),
(3, 'UX/UI Design', 30, 3),
(4, 'Adobe XD', 15, 2),
(5, 'Redes de Computadores', 100, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `professores`
--

CREATE TABLE `professores` (
  `id` tinyint(4) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `area_atuacao` enum('design','desenvolvimento','infra') NOT NULL,
  `cursos_id` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `professores`
--

INSERT INTO `professores` (`id`, `nome`, `area_atuacao`, `cursos_id`) VALUES
(1, 'Jon Oliva', 'infra', 5),
(2, 'Lemmy Kilmister', 'design', 4),
(3, 'Neil Peart', 'design', 3),
(4, 'Ozzy Osbourne', 'desenvolvimento', 2),
(5, 'David Gilmour', 'desenvolvimento', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_alunos_cursos` (`cursos_id`);

--
-- Índices para tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cursos_professores` (`professores_id`);

--
-- Índices para tabela `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_professores_cursos` (`cursos_id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `professores`
--
ALTER TABLE `professores`
  MODIFY `id` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `alunos`
--
ALTER TABLE `alunos`
  ADD CONSTRAINT `fk_alunos_cursos` FOREIGN KEY (`cursos_id`) REFERENCES `cursos` (`id`);

--
-- Limitadores para a tabela `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `fk_cursos_professores` FOREIGN KEY (`professores_id`) REFERENCES `professores` (`id`);

--
-- Limitadores para a tabela `professores`
--
ALTER TABLE `professores`
  ADD CONSTRAINT `fk_professores_cursos` FOREIGN KEY (`cursos_id`) REFERENCES `cursos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
