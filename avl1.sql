-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Tempo de geração: 19/10/2023 às 13:41
-- Versão do servidor: 10.11.2-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `avl1`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `gastos`
--

CREATE TABLE `gastos` (
  `cod_gasto` int(11) NOT NULL,
  `nome` varchar(150) NOT NULL,
  `dt_venc` date DEFAULT NULL,
  `valor` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `gastos`
--

INSERT INTO `gastos` (`cod_gasto`, `nome`, `dt_venc`, `valor`) VALUES
(1, 'Luz', '2023-10-10', 137),
(2, 'Água', '2023-10-05', 231.8),
(3, 'Internet', '2023-10-08', 119),
(4, 'Cartão', '2023-10-02', 2879.32),
(5, 'Netflix', '2023-10-07', 29.9),
(7, 'Boleto', '2023-10-04', 851.87),
(8, 'Tupperware', '2023-10-03', 50),
(9, 'Celular', '2023-10-05', 79.9),
(10, 'Van escolar', '2023-10-04', 250);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`cod_gasto`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `gastos`
--
ALTER TABLE `gastos`
  MODIFY `cod_gasto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
