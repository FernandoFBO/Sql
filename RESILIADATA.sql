CREATE TABLE Empresas (
    ID_Empresa INT PRIMARY KEY,
    Nome VARCHAR(255),
    Endereco VARCHAR(255),
    Contato VARCHAR(255)
    
);

CREATE TABLE Tecnologias (
    ID_Tecnologia INT PRIMARY KEY,
    Nome VARCHAR(255),
    Area VARCHAR(50)
);

CREATE TABLE Empresas_Tecnologias (
    ID_Empresa_Tecnologia INT PRIMARY KEY,
    ID_Empresa INT,
    ID_Tecnologia INT,
    FOREIGN KEY (ID_Empresa) REFERENCES Empresas(ID_Empresa),
    FOREIGN KEY (ID_Tecnologia) REFERENCES Tecnologias(ID_Tecnologia)
);

CREATE TABLE Colaboradores (
    ID_Colaborador INT PRIMARY KEY,
    Nome VARCHAR(255),
    Cargo VARCHAR(100),
    ID_Empresa INT,
    FOREIGN KEY (ID_Empresa) REFERENCES Empresas(ID_Empresa)
);

CREATE TABLE Area (
    ID_Area INT PRIMARY KEY,
    Nome VARCHAR(50)
);

ALTER TABLE Tecnologias
ADD COLUMN ID_Area INT,
ADD FOREIGN KEY (ID_Area) REFERENCES Area(ID_Area);

INSERT INTO Empresas (ID_Empresa, Nome, Endereco, Contato)
VALUES
    (1, 'FBO', 'Rua projetada A, Rio de Janeiro, Rio de Janeiro', 'contato@FBO.com'),
    (2, 'Romano', 'Rua projetada B, São Paulo, São Paulo', 'contato@Romano.com');  
    
INSERT INTO Area (ID_Area, Nome)
VALUES
    (1, 'Web Dev'),
    (2, 'Dados'),
    (3, 'Marketing');
    

INSERT INTO Colaboradores (ID_Colaborador, Nome, Cargo, ID_Empresa)
VALUES
    (1, 'João Silva', 'Desenvolvedor', 1),
    (2, 'Maria Oliveira', 'Analista', 2);
    
INSERT INTO Tecnologias (ID_Tecnologia, Nome, ID_Area)
VALUES
    (1, 'Tech A', 1),
    (2, 'Tech B', 2);
    
INSERT INTO Empresas_Tecnologias (ID_Empresa_Tecnologia, ID_Empresa, ID_Tecnologia)
VALUES
    (1, 1, 1),
    (2, 1, 2);
    
select * from empresas_tecnologias