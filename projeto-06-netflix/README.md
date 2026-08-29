# 🎬 Projeto 06 — Análise de Dados da Netflix

### 📊 Transformando dados de acessos da Netflix em informações para análise de desempenho e comportamento dos usuários.

---

## 📌 Sobre o Projeto

Este projeto tem como objetivo realizar uma análise de dados relacionados aos acessos da Netflix, explorando informações de utilização da plataforma em diferentes períodos e regiões.

A análise foi desenvolvida utilizando **SQL Server** para estruturação e consulta dos dados e **Power BI** para tratamento, modelagem, criação de indicadores e visualização das informações.

O projeto foi construído com foco em transformar dados brutos em informações visuais que facilitem a identificação de padrões e diferenças de acesso entre o Brasil e o cenário global.

---

## 🎯 Objetivos

Os principais objetivos do projeto são:

- Analisar os acessos à Netflix;
- Comparar os dados do Brasil com os dados globais;
- Organizar e estruturar os dados para análise;
- Utilizar SQL para criação e consulta da base de dados;
- Desenvolver indicadores e visualizações no Power BI;
- Identificar padrões de comportamento nos acessos;
- Transformar os dados em informações de apoio à análise.

---

## 🗂️ Processo de Desenvolvimento

O projeto foi desenvolvido seguindo um fluxo de análise de dados:

### 1. Coleta e organização dos dados

Os dados utilizados no projeto foram organizados em arquivos CSV e Excel, contendo informações relacionadas aos acessos da Netflix.

Os arquivos foram separados entre dados gerais e informações relacionadas aos acessos por país.

### 2. Estruturação dos dados

Foi utilizada uma base SQL para estruturar os dados e facilitar sua consulta.

O script SQL contém a criação da estrutura do banco e a inserção dos dados necessários para o desenvolvimento das análises.

### 3. Consultas e tratamento com SQL

O SQL foi utilizado para explorar os dados, realizar consultas e preparar informações que posteriormente seriam utilizadas na análise.

Essa etapa permitiu trabalhar diretamente com os dados antes da construção das visualizações.

### 4. Análise e visualização no Power BI

Após a organização dos dados, as informações foram utilizadas no Power BI para construção do dashboard.

Foram criadas visualizações para facilitar a interpretação dos dados e permitir uma análise comparativa entre o Brasil e o cenário global.

---

## 🛠️ Tecnologias Utilizadas

- **Power BI** — Dashboard e visualização dos dados
- **SQL Server** — Banco de dados e consultas SQL
- **Excel** — Organização e armazenamento dos dados
- **CSV** — Arquivos de dados utilizados na análise
- **DAX** — Criação de medidas e indicadores no Power BI
- **Power Query** — Tratamento e preparação dos dados

---

## 🗄️ Dados Utilizados

Os dados do projeto estão organizados na pasta `dados/`:

| Arquivo | Descrição |
|---|---|
| `NETFLIX(ACESSOS GERAL).csv` | Dados gerais de acessos |
| `NETFLIX(ACESSOS PAISES).csv` | Dados relacionados aos acessos por país |
| `NETFLIX.xlsx` | Base de dados em formato Excel |

---

## 💻 Banco de Dados

A etapa de banco de dados foi desenvolvida utilizando **SQL Server**.

O projeto possui um script responsável pela criação da estrutura do banco e inserção dos dados:

```text
sql/
└── 1_CRIACAO_DE_BANCO+INSERTS.sql