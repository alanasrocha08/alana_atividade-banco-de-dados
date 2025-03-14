-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 14/03/2025 às 12:30
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `tecinternet_escola_alana`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `alunos`
--

CREATE TABLE `alunos` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `data_nascimento` varchar(45) NOT NULL,
  `primeira_nota` decimal(4,2) NOT NULL,
  `segunda_nota` decimal(4,2) NOT NULL,
  `curso_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `alunos`
--

INSERT INTO `alunos` (`id`, `nome`, `data_nascimento`, `primeira_nota`, `segunda_nota`, `curso_id`) VALUES
(1, 'Alana', '2008-02-13', 7.00, 6.00, 1),
(2, 'Júlia', '2007-05-17', 8.50, 7.00, 2),
(3, 'Nathalya', '2008-04-19', 9.00, 10.00, 1),
(4, 'Clara', '2008-04-18', 6.00, 10.00, 2),
(6, 'Ana Clara', '2008-05-17', 10.00, 7.00, 4),
(8, 'Leandro', '2011-11-14', 3.00, 5.35, 5),
(9, 'Vitor', '2009-11-12', 6.00, 1.50, 1),
(10, 'Ana Luisa', '2010-10-27', 8.00, 8.00, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `carga_horaria` int(11) NOT NULL,
  `professor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cursos`
--

INSERT INTO `cursos` (`id`, `nome`, `carga_horaria`, `professor_id`) VALUES
(1, 'Front-End', 40, 5),
(2, 'Back-End', 80, 4),
(3, 'UX/UI Design', 30, 3),
(4, 'Adobe XD', 15, 2),
(5, 'Redes de computadores', 100, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `professores`
--

CREATE TABLE `professores` (
  `id` int(11) NOT NULL,
  `nome` text NOT NULL,
  `area_atuacao` enum('design','desenvolvimento','infra') DEFAULT NULL,
  `curso_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `professores`
--

INSERT INTO `professores` (`id`, `nome`, `area_atuacao`, `curso_id`) VALUES
(1, 'Jon Oliva ', 'infra', 5),
(2, 'Lemmy Kilmister', 'design', 4),
(3, 'Neil Peart', 'design', 3),
(4, 'Ozzy Osbourne', 'desenvolvimento', 2),
(5, 'David Gilmourne', 'desenvolvimento', 1);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `alunos`
--
ALTER TABLE `alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `professores`
--
ALTER TABLE `professores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
