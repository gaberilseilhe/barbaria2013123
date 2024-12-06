-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 06/12/2024 às 19:38
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
-- Banco de dados: `barbeariadocareca`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `abc`
--

CREATE TABLE `abc` (
  `id_usuario` int(11) NOT NULL,
  `nome` varchar(256) NOT NULL,
  `email` varchar(128) NOT NULL,
  `data_de_nascimento` date NOT NULL,
  `id_grupo` int(11) NOT NULL,
  `data_criacao` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `abc`
--

INSERT INTO `abc` (`id_usuario`, `nome`, `email`, `data_de_nascimento`, `id_grupo`, `data_criacao`) VALUES
(1, 'Gabriel Seilhe', 'gaw89aud89aw9u8d@dijwajiawijd', '0000-00-00', 1, '2024-12-06 15:35:06'),
(2, 'germanosilva25', 'germano@wdad', '0123-03-12', 2, '2024-12-06 15:35:32'),
(3, 'ivo ', 'ivo@fkasja', '3123-02-11', 2, '2024-12-06 15:35:45'),
(4, 'pablo', 'pablo@gadwa', '1231-03-21', 3, '2024-12-06 15:36:09'),
(5, 'jorge', 'jorge@asdacasd', '0000-00-00', 2, '2024-12-06 15:36:28'),
(6, 'saitama', 'saitama@fasbdjkas', '0123-12-31', 3, '2024-12-06 15:36:41');

-- --------------------------------------------------------

--
-- Estrutura para tabela `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(11) NOT NULL,
  `dia_da_semana` int(11) NOT NULL,
  `horario_inicio` time NOT NULL,
  `id_usuario` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `dia_da_semana`, `horario_inicio`, `id_usuario`) VALUES
(1, 0, '08:00:00', '2'),
(2, 0, '08:30:00', '2'),
(3, 0, '09:00:00', '2'),
(4, 0, '09:30:00', '2'),
(5, 0, '10:00:00', '2'),
(6, 0, '10:30:00', '2'),
(7, 0, '11:00:00', '2'),
(8, 0, '11:30:00', '2'),
(9, 0, '14:00:00', '2'),
(10, 0, '14:30:00', '2'),
(11, 0, '15:00:00', '2'),
(12, 0, '15:30:00', '2'),
(13, 0, '16:00:00', '2'),
(14, 0, '16:30:00', '2'),
(15, 0, '17:00:00', '2'),
(16, 0, '17:30:00', '2'),
(17, 0, '18:00:00', '2'),
(18, 0, '18:30:00', '2'),
(19, 0, '19:00:00', '2'),
(20, 0, '19:30:00', '2'),
(21, 1, '08:00:00', '5'),
(22, 1, '08:30:00', '5'),
(23, 1, '09:00:00', '5'),
(24, 1, '09:30:00', '5'),
(25, 1, '10:00:00', '5'),
(26, 1, '10:30:00', '5'),
(27, 1, '11:00:00', '5'),
(28, 1, '11:30:00', '5'),
(29, 1, '14:00:00', '5'),
(30, 1, '14:30:00', '5'),
(31, 1, '15:00:00', '5'),
(32, 1, '15:30:00', '5'),
(33, 1, '16:00:00', '5'),
(34, 1, '16:30:00', '5'),
(35, 1, '17:00:00', '5'),
(36, 1, '17:30:00', '5'),
(37, 1, '18:00:00', '5'),
(38, 1, '18:30:00', '5'),
(39, 1, '19:00:00', '5'),
(40, 1, '19:30:00', '5'),
(41, 2, '08:00:00', '5'),
(42, 2, '08:30:00', '5'),
(43, 2, '09:00:00', '5'),
(44, 2, '09:30:00', '5'),
(45, 2, '10:00:00', '5'),
(46, 2, '10:30:00', '5'),
(47, 2, '11:00:00', '5'),
(48, 2, '11:30:00', '5'),
(49, 2, '14:00:00', '5'),
(50, 2, '14:30:00', '5'),
(51, 2, '15:00:00', '5'),
(52, 2, '15:30:00', '5'),
(53, 2, '16:00:00', '5'),
(54, 2, '16:30:00', '5'),
(55, 2, '17:00:00', '5'),
(56, 2, '17:30:00', '5'),
(57, 2, '18:00:00', '5'),
(58, 2, '18:30:00', '5'),
(59, 2, '19:00:00', '5'),
(60, 2, '19:30:00', '5'),
(61, 3, '08:00:00', '3'),
(62, 3, '08:30:00', '3'),
(63, 3, '09:00:00', '3'),
(64, 3, '09:30:00', '3'),
(65, 3, '10:00:00', '3'),
(66, 3, '10:30:00', '3'),
(67, 3, '11:00:00', '3'),
(68, 3, '11:30:00', '3'),
(69, 3, '14:00:00', '3'),
(70, 3, '14:30:00', '3'),
(71, 3, '15:00:00', '3'),
(72, 3, '15:30:00', '3'),
(73, 3, '16:00:00', '3'),
(74, 3, '16:30:00', '3'),
(75, 3, '17:00:00', '3'),
(76, 3, '17:30:00', '3'),
(77, 3, '18:00:00', '3'),
(78, 3, '18:30:00', '3'),
(79, 3, '19:00:00', '3'),
(80, 3, '19:30:00', '3');

-- --------------------------------------------------------

--
-- Estrutura para tabela `agendamentos`
--

CREATE TABLE `agendamentos` (
  `id_agendamento` int(11) NOT NULL,
  `servico` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_agenda` int(11) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `agendamentos`
--

INSERT INTO `agendamentos` (`id_agendamento`, `servico`, `id_usuario`, `id_agenda`, `data`) VALUES
(1, 2, 3, 61, '2024-12-11'),
(2, 1, 5, 21, '2024-12-16');

-- --------------------------------------------------------

--
-- Estrutura para tabela `dados_bancarios`
--

CREATE TABLE `dados_bancarios` (
  `id_dados` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `nome_banco` varchar(128) NOT NULL,
  `numero_conta` varchar(20) NOT NULL,
  `numero_agencia` varchar(20) NOT NULL,
  `chave_pix` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `dados_bancarios`
--

INSERT INTO `dados_bancarios` (`id_dados`, `id_usuario`, `nome_banco`, `numero_conta`, `numero_agencia`, `chave_pix`) VALUES
(1, 1, 'Banco do Brasil S.A.', '', '', ''),
(2, 2, 'Banco do Brasil S.A.', '123123', '123', '23123123'),
(3, 3, 'Banco do Brasil S.A.', '12313', '12123123', '131231'),
(4, 4, 'Banco do Brasil S.A.', '', '', '12312'),
(5, 5, 'Banco do Brasil S.A.', '123123132', '32131321', '213123'),
(6, 6, 'Banco do Brasil S.A.', '', '', '123123123');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `abc`
--
ALTER TABLE `abc`
  ADD PRIMARY KEY (`id_usuario`);

--
-- Índices de tabela `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Índices de tabela `agendamentos`
--
ALTER TABLE `agendamentos`
  ADD PRIMARY KEY (`id_agendamento`);

--
-- Índices de tabela `dados_bancarios`
--
ALTER TABLE `dados_bancarios`
  ADD PRIMARY KEY (`id_dados`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `abc`
--
ALTER TABLE `abc`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT de tabela `agendamentos`
--
ALTER TABLE `agendamentos`
  MODIFY `id_agendamento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `dados_bancarios`
--
ALTER TABLE `dados_bancarios`
  MODIFY `id_dados` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
