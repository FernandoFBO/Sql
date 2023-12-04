# PROJETO INDIVIDUAL 3 - Sistema RESILIADATA

## Descrição
Este projeto faz parte do Módulo 3 da Resilia, com o objetivo de modernizar o processo de armazenamento de dados e gerenciamento da estrutura de ensino da empresa.

## Conteúdo do Projeto
- [Contexto](#contexto)
- [Estrutura do Projeto](#estrutura-do-projeto)
- [Modelagem do Banco de Dados](#modelagem-do-banco-de-dados)
- [Relacionamentos](#relacionamentos)
- [Guia do Projeto](#guia-do-projeto)
- [Licença](#licença)
- [Status](#status)

## Contexto
O sistema visa auxiliar na avaliação de quais são as tecnologias que as empresas parceiras
estão utilizando e quem são seus colaboradores.


## Estrutura do Projeto
O projeto está estruturado da seguinte forma:
- `RESILIADATA.sql`: Contém o codigo para exução do banco de dados.
- `perguntas.txt`: Arquivo de texto contendo as respostas das questões.
- `modelo_logico.png`: Print do modelo proposto
- `modelo_conceitual.png`: Print do modelo proposto


## 1 - Quais são as entidades necessárias?

    Empresas
    Tecnologias
    Empresas_Tecnologias
    Colaboradores
    Área

## 2 - Quais são os principais campos e seus respectivos tipos?

Empresas:

    ID_Empresa (INT - Chave Primária)
    Nome (VARCHAR(255))
    Endereco (VARCHAR(255))
    Contato (VARCHAR(255))

Tecnologias:

    ID_Tecnologia (INT - Chave Primária)
    Nome (VARCHAR(255))
    ID_Area (INT - Chave Estrangeira referenciando Área)

Empresas_Tecnologias:

    ID_Empresa_Tecnologia (INT - Chave Primária)
    ID_Empresa (INT - Chave Estrangeira referenciando Empresas)
    ID_Tecnologia (INT - Chave Estrangeira referenciando Tecnologias)

Colaboradores:

    ID_Colaborador (INT - Chave Primária)
    Nome (VARCHAR(255))
    Cargo (VARCHAR(100))
    ID_Empresa (INT - Chave Estrangeira referenciando Empresas)

Área:

    ID_Area (INT - Chave Primária)
    Nome (VARCHAR(50))

## 3 - Como essas entidades estão relacionadas?

    A tabela Empresas_Tecnologias cria um relacionamento muitos-para-muitos entre Empresas e Tecnologias, permitindo que uma empresa utilize várias tecnologias e uma tecnologia seja utilizada por várias empresas.
    A tabela Colaboradores possui uma relação muitos-para-um com a tabela Empresas, indicando que um colaborador pertence a uma única empresa, mas uma empresa pode ter vários colaboradores.
    A tabela Tecnologias está relacionada à tabela Área através da coluna ID_Area, indicando a área de cada tecnologia.

## 4 - Simule 2 registros para cada entidade:

Empresas:
ID_Empresa	Nome	Endereco	Contato
1	FBO	Rua projetada A, Rio de Janeiro, RJ	contato@FBO.com
2	Romano	Rua projetada B, São Paulo, SP	contato@Romano.com

Tecnologias:
ID_Tecnologia	Nome	ID_Area
1	Tech A	1
2	Tech B	2

Empresas_Tecnologias:
ID_Empresa_Tecnologia	ID_Empresa	ID_Tecnologia
1	1	1
2	1	2

Colaboradores:
ID_Colaborador	Nome	Cargo	ID_Empresa
1	João Silva	Desenvolvedor	1
2	Maria Oliveira	Analista	2

Área:
ID_Area	Nome
1	Web Dev
2	Dados
3	Marketing# Sql
