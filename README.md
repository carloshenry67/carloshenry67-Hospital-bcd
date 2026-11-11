# 🏥 Sistema de Gestão Hospitalar – Vida & Saúde

## 📌 Sobre o Projeto

O projeto **Sistema de Gestão Hospitalar – Vida & Saúde** tem como objetivo desenvolver um banco de dados relacional para auxiliar no gerenciamento das informações de um hospital.

A proposta surgiu da necessidade de centralizar e organizar os dados hospitalares, substituindo controles manuais e planilhas isoladas por um sistema estruturado e eficiente.

O banco de dados foi desenvolvido utilizando MySQL, permitindo armazenar, consultar e relacionar informações sobre pacientes, médicos, quartos, internações, consultas e prescrições médicas.

O projeto também busca garantir a integridade dos dados e facilitar a obtenção de informações importantes para os diferentes setores da instituição.

---

## 🎯 Objetivos do Projeto

- Desenvolver um banco de dados relacional para o ambiente hospitalar.
- Organizar os cadastros de pacientes e médicos.
- Controlar os quartos e suas respectivas situações de ocupação.
- Registrar as internações dos pacientes.
- Armazenar informações sobre consultas médicas.
- Registrar medicamentos e prescrições.
- Estabelecer relacionamentos entre as tabelas.
- Garantir a integridade referencial das informações.
- Desenvolver consultas SQL para auxiliar na tomada de decisões.

---

## 🛠️ Tecnologias Utilizadas

- **MySQL:** Sistema gerenciador de banco de dados.
- **MySQL Workbench:** Ferramenta utilizada para criação e gerenciamento do banco de dados.
- **SQL:** Linguagem utilizada para criação das tabelas, inserção e consulta de dados.
- **GitHub:** Plataforma utilizada para armazenar e compartilhar os scripts do projeto.

---

## 🗄️ Estrutura do Banco de Dados

O banco de dados possui o nome `hospital_db` e é composto por seis tabelas principais.

| Tabela | Descrição |
|---|---|
| `pacientes` | Armazena os dados pessoais dos pacientes, como nome, CPF, nascimento, telefone e convênio. |
| `medicos` | Armazena os dados dos médicos, CRM, especialidades e valores das consultas. |
| `quartos` | Registra os números dos quartos, andares, tipos e situações de ocupação. |
| `internacoes` | Armazena os registros de internação dos pacientes, datas de entrada e saída e valores das diárias. |
| `consultas` | Registra os atendimentos médicos, pacientes, médicos, datas e valores. |
| `prescricoes` | Armazena os medicamentos, dosagens e quantidades prescritas. |

---

## 🔗 Relacionamentos Entre as Tabelas

O banco de dados utiliza chaves primárias (PK) e chaves estrangeiras (FK) para estabelecer os relacionamentos e manter a integridade das informações.

Os relacionamentos são:

- **Pacientes e Internações:** Um paciente pode possuir várias internações.
- **Quartos e Internações:** Um quarto pode estar relacionado a várias internações ao longo do tempo.
- **Pacientes e Consultas:** Um paciente pode realizar várias consultas.
- **Médicos e Consultas:** Um médico pode atender vários pacientes em diferentes consultas.
- **Consultas e Prescrições:** Uma consulta pode possuir várias prescrições médicas.

Esses relacionamentos permitem conectar as informações armazenadas nas diferentes tabelas e realizar consultas mais completas.

---

## 📊 Consultas SQL Desenvolvidas

Foram desenvolvidas 15 consultas estratégicas para atender às necessidades dos diferentes setores do hospital, além de três consultas básicas para visualização dos dados.

### Consultas Básicas

1. Listagem de todos os pacientes cadastrados.
2. Listagem de todos os médicos cadastrados.
3. Listagem de todos os quartos cadastrados.

### Consultas Estratégicas

4. Relatório completo com nome do paciente, médico responsável, data da consulta, medicamento e quantidade prescrita.
5. Histórico de internações com nome do paciente, quarto, andar, data de entrada e valor da diária.
6. Listagem de pacientes, convênios e médicos que realizaram os atendimentos.
7. Relação de prescrições médicas com os respectivos médicos responsáveis e pacientes.
8. Identificação dos pacientes que passaram por internações e também realizaram consultas.
9. Listagem das consultas em ordem cronológica decrescente.
10. Relação das internações ordenadas pelo valor da diária.
11. Cálculo do valor médio das consultas médicas.
12. Cálculo do valor total arrecadado com consultas.
13. Identificação das consultas realizadas por pacientes com sobrenome Silva.
14. Identificação das consultas realizadas por médicos da área de Cardiologia.
15. Listagem das internações ocorridas no primeiro semestre de 2026.
16. Cálculo do total gasto em consultas por pacientes do convênio Unimed.
17. Cálculo do custo das diárias por andar para pacientes com sobrenome Oliveira.
18. Cálculo do faturamento agrupado por especialidades cirúrgicas.

---

## ⚙️ Como Executar o Projeto

Para executar o banco de dados, siga as etapas abaixo:

**1. Instalação**

Instale o MySQL Server e o MySQL Workbench em seu computador.

**2. Criação do Banco de Dados**

Abra o MySQL Workbench e execute o script DDL.

Esse script será responsável por criar o banco de dados `hospital_db` e suas respectivas tabelas.

**3. Inserção dos Dados**

Execute o script de inserção de dados (DML), caso esteja disponibilizado separadamente.

Essa etapa é necessária para que as consultas retornem resultados.

**4. Execução das Consultas**

Após criar as tabelas e inserir os registros, execute o script DQL.

As consultas apresentarão os resultados solicitados para análise das informações hospitalares.

---

## 📚 Conceitos de Banco de Dados Aplicados

Durante o desenvolvimento do projeto, foram utilizados os seguintes conceitos:

- Banco de dados relacional.
- Modelagem de dados.
- Criação e estruturação de tabelas.
- Chaves primárias (Primary Key).
- Chaves estrangeiras (Foreign Key).
- Integridade referencial.
- Restrições de dados.
- Consultas simples e avançadas.
- Junções entre tabelas.
- Agrupamento de registros.
- Ordenação de resultados.
- Funções de agregação.

---

## 💡 Importância do Projeto

A implementação de um banco de dados hospitalar permite melhorar a organização e o gerenciamento das informações da instituição.

Com os dados centralizados, torna-se mais fácil consultar históricos de pacientes, acompanhar internações, verificar atendimentos médicos, controlar prescrições e analisar informações financeiras.

Além disso, as consultas SQL possibilitam gerar relatórios que auxiliam os setores administrativos, financeiros e médicos na tomada de decisões.

---

## 👨‍💻 Informações Acadêmicas

| Informação | Descrição |
|---|---|
| Projeto | Sistema de Gestão Hospitalar – Vida & Saúde |
| Disciplina | Banco de Dados |
| Desenvolvimento | Individual |
| Banco de Dados | MySQL |
| Ferramenta | MySQL Workbench |
| Linguagem | SQL |

---

## 🏁 Considerações Finais

O desenvolvimento deste projeto proporcionou a aplicação prática dos conceitos de banco de dados relacionais, permitindo compreender a importância da organização, do armazenamento e da integridade das informações.

A criação das tabelas, dos relacionamentos e das consultas SQL possibilitou desenvolver uma estrutura capaz de representar diferentes processos de uma instituição hospitalar.

**Projeto acadêmico desenvolvido individualmente para aplicação dos conhecimentos de Banco de Dados e SQL.**
