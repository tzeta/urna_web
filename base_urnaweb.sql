-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 02-Maio-2017 às 20:41
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `base_urnaweb`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidato`
--

CREATE TABLE `candidato` (
  `cod_eleitoral` int(11) NOT NULL,
  `nome_cand` varchar(255) DEFAULT NULL,
  `nome_part` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `candidato`
--

INSERT INTO `candidato` (`cod_eleitoral`, `nome_cand`, `nome_part`, `img`) VALUES
(0, 'NULO', 'NULO', 'branco.jpg'),
(1313, 'Dilma', 'PT', 'dilma.jpg'),
(6666, 'Eneas', 'PRONA', 'eneas.jpg'),
(7007, 'Marina', 'REDE', 'marina.jpg'),
(9999, 'BRANCO', 'BRANCO', 'branco.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `urna`
--

CREATE TABLE `urna` (
  `id` int(11) NOT NULL,
  `id_cand` int(11) DEFAULT NULL,
  `id_voto` int(11) DEFAULT NULL,
  `data_hora` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `voto`
--

CREATE TABLE `voto` (
  `id_voto` int(11) NOT NULL,
  `nome` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `voto`
--

INSERT INTO `voto` (`id_voto`, `nome`) VALUES
(0, 'BRANCO'),
(1, 'VALIDO'),
(2, 'NULO');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidato`
--
ALTER TABLE `candidato`
  ADD PRIMARY KEY (`cod_eleitoral`);

--
-- Indexes for table `urna`
--
ALTER TABLE `urna`
  ADD PRIMARY KEY (`id`,`data_hora`);

--
-- Indexes for table `voto`
--
ALTER TABLE `voto`
  ADD PRIMARY KEY (`id_voto`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
