CREATE TABLE Hospede (
ID_Hospede INT PRIMARY KEY,
Nome VARCHAR(250),
Dt_Nasc DATE,
CPF VARCHAR(11),
Telefone VARCHAR(12),
Endereco VARCHAR(250),
CEP VARCHAR(8),
Cidade VARCHAR(250),
Municipio CHAR(2)
);
CREATE TABLE Reserva (
ID_Reserva INT PRIMARY KEY,
Data_Reserva DATE,
Qtd_Dias_Reserva CHAR(3),
ID_Hospede INT,
ID_Quarto INT
);
CREATE TABLE Quartos (
ID_Quarto INT PRIMARY KEY,
ID_Tp_Quarto INT
);
CREATE TABLE Tipos_Quartos (
ID_Tp_Quarto INT PRIMARY KEY,
Mod_Quarto VARCHAR(250),
ID_Temporada INT,
ID_Servico INT
);
CREATE TABLE Temporada (
ID_Temporada INT PRIMARY KEY,
Est_Ano VARCHAR(250),
Preco_Temp_Dia DECIMAL(5,2)
);
CREATE TABLE Servicos (
ID_Servico INT PRIMARY KEY,
Tp_Servico VARCHAR(250),
Preco_Serv DECIMAL(5,2)
);
CREATE TABLE Quartos_Reservados (
ID_Reserva INT,
ID_Quarto INT
);
ALTER TABLE Reserva 
ADD FOREIGN KEY(ID_Hospede) REFERENCES Hospede (ID_Hospede);
ALTER TABLE Reserva 
ADD FOREIGN KEY(ID_Quarto) REFERENCES Quartos (ID_Quarto);
ALTER TABLE Quartos 
ADD FOREIGN KEY(ID_Tp_Quarto) REFERENCES Tipos_Quartos (ID_Tp_Quarto);
ALTER TABLE Tipos_Quartos 
ADD FOREIGN KEY(ID_Temporada) REFERENCES Temporada (ID_Temporada);
ALTER TABLE Tipos_Quartos 
ADD FOREIGN KEY(ID_Servico) REFERENCES Servicos (ID_Servico);
ALTER TABLE Quartos_Reservados 
ADD FOREIGN KEY(ID_Reserva) REFERENCES Reserva (ID_Reserva);
ALTER TABLE Quartos_Reservados 
ADD FOREIGN KEY(ID_Quarto) REFERENCES Quartos (ID_Quarto);