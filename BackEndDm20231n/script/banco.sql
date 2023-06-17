create database dm20231n;

create table dm20231n.usuarios (
  id BIGINT NOT NULL AUTO_INCREMENT,
  login VARCHAR(255),
  senha VARCHAR(255),
  status VARCHAR(255),
  tipo VARCHAR(255),
  primary key (id));
  
create table dm20231n.pessoas (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255),
  cpf VARCHAR(255),
  tipo VARCHAR(255),
  email VARCHAR(255),
  primary key (id));

create table dm20231n.conta (
  id BIGINT NOT NULL AUTO_INCREMENT,
  nomeconta VARCHAR(255),
  banco VARCHAR(255),
  valor VARCHAR(255),
  primary key (id));

create table dm20231n.pessoas_contas (
  id BIGINT NOT NULL AUTO_INCREMENT,
  idP BIGINT NOT NULL,
  idC BIGINT NOT NULL,
  obs VARCHAR(255),
  primary key (id));

create table dm20231n.usuarios_pessoas (
  id BIGINT NOT NULL AUTO_INCREMENT,
  idU BIGINT NOT NULL,
  idP BIGINT NOT NULL,
  obs VARCHAR(255),
  primary key (id));

INSERT INTO `dm20231n`.`usuarios` (`login`, `senha`, `status`, `tipo`) VALUES ('Gustavo', '1234', 'ATIVO', 'ADM');
INSERT INTO `dm20231n`.`usuarios` (`login`, `senha`, `status`, `tipo`) VALUES ('Murilo', '1234', 'ATIVO', 'USU');
INSERT INTO `dm20231n`.`usuarios` (`login`, `senha`, `status`, `tipo`) VALUES ('Mariana', '1234', 'ATIVO', 'USU');
INSERT INTO `dm20231n`.`usuarios` (`login`, `senha`, `status`, `tipo`) VALUES ('Ricardo', '1234', 'ATIVO', 'USU');
INSERT INTO `dm20231n`.`usuarios` (`login`, `senha`, `status`, `tipo`) VALUES ('Juliana', '1234', 'ATIVO', 'USU');
INSERT INTO `dm20231n`.`usuarios` (`login`, `senha`, `status`, `tipo`) VALUES ('João', '1234', 'ATIVO', 'USU');
INSERT INTO `dm20231n`.`pessoas` (`nome`, `cpf`, `tipo`, `email`) VALUES ('NATHALIA', '567876897-43', 'ANFITRIA', 'nathalia@gmail.com');
INSERT INTO `dm20231n`.`pessoas` (`nome`, `cpf`, `tipo`, `email`) VALUES ('ETHAN', '213456412-87', 'HOSPEDE', 'ethan@gmail.com');
INSERT INTO `dm20231n`.`pessoas` (`nome`, `cpf`, `tipo`, `email`) VALUES ('MIA', '876543279-09', 'HOSPEDE', 'mia@gmail.com');
INSERT INTO `dm20231n`.`pessoas` (`nome`, `cpf`, `tipo`, `email`) VALUES ('JUNIOR', '786765432-54', 'HOSPEDE', 'junior@gmail.com');
INSERT INTO `dm20231n`.`pessoas` (`nome`, `cpf`, `tipo`, `email`) VALUES ('PAULA', '435267890-12', 'HOSPEDE', 'paula@gmail.com');
INSERT INTO `dm20231n`.`pessoas` (`nome`, `cpf`, `tipo`, `email`) VALUES ('GABRIEL', '653278908-34', 'HOSPEDE', 'gabriel@gmail.com');
INSERT INTO `dm20231n`.`conta` (`Banco`, `nome`, `valor`) VALUES ('Bradesco', 'Gustavo Cardoso Barros', '3000');
INSERT INTO `dm20231n`.`conta` (`Banco`, `nome`, `valor`) VALUES ('Itaú', 'Múrilo da Silva', '2000');
INSERT INTO `dm20231n`.`conta` (`Banco`, `nome`, `valor`) VALUES ('NuBank', 'Mariana Fernanda', '6500');
INSERT INTO `dm20231n`.`conta` (`Banco`, `nome`, `valor`) VALUES ('C6Bank', 'Gilvan Antonio', '1800');
INSERT INTO `dm20231n`.`usuarios_pessoas` (`idP`, `idU`, `obs`) VALUES ('1', '1', 'Administrador de contas');
INSERT INTO `dm20231n`.`usuarios_pessoas` (`idP`, `idU`, `obs`) VALUES ('2', '2', 'Cliente do Banco');
INSERT INTO `dm20231n`.`usuarios_pessoas` (`idP`, `idU`, `obs`) VALUES ('3', '3', 'Cliente do Banco');
INSERT INTO `dm20231n`.`pessoas_contas` (`idP`, `idC`, `obs`) VALUES ('2', '1', 'Conta ativa');
INSERT INTO `dm20231n`.`pessoas_contas` (`idP`, `idC`, `obs`) VALUES ('3', '2', 'Conta bloqueada');
INSERT INTO `dm20231n`.`pessoas_contas` (`idP`, `idC`, `obs`) VALUES ('4', '3', 'Conta Ativa');
