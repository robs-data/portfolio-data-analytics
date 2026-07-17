# 📊 Projeto 02 - Análise de Vendas

## 📌 Objetivo

Este projeto foi desenvolvido durante meus estudos de Power BI com foco na consolidação, tratamento e modelagem de dados de vendas.

O principal objetivo foi unificar as bases de vendas dos anos de **2017, 2018 e 2019**, aplicar processos de limpeza dos dados e preparar uma base única para criação de dashboards.

---

## 🛠 Ferramentas Utilizadas

- Power BI
- Power Query (Linguagem M)
- DAX
- Modelagem de Dados

---

## 📂 Estrutura do Projeto

```
projeto-02-analise-de-vendas
│
├── dados
├── dashboard
├── documentos
├── imagens
└── scripts
```

---

## 📚 Etapas Desenvolvidas

### 1. Tratamento das tabelas

Cada tabela anual foi tratada individualmente antes da consolidação.

Foram realizadas as seguintes etapas:

- Promoção do cabeçalho
- Correção dos tipos de dados
- Conversão das datas
- Tratamento de erros
- Padronização dos campos

---

### 2. Consolidação dos dados

Após o tratamento das bases, foi realizada a união das tabelas de:

- Vendas 2017
- Vendas 2018
- Vendas 2019

gerando uma única tabela consolidada para análise.

---

### 3. Transformações realizadas

Durante o tratamento dos dados foram aplicadas diversas transformações, como:

- Substituição de códigos por informações descritivas
- Criação de novas colunas
- Utilização de Colunas Condicionais
- Conversão de tipos de dados
- Padronização do tamanho dos campos
- Ocultação de colunas auxiliares para melhorar a organização do modelo

---

### 4. Conceito De-Para

Foi criado um processo de **De-Para**, substituindo códigos de vendedores pelos respectivos nomes.

Esse processo torna os dashboards mais intuitivos para o usuário final.

Exemplo:

| Código | Vendedor |
|---------|-----------|
| 01 | João |
| 02 | Maria |
| 03 | Carlos |

---

### 5. Organização das consultas

Durante o desenvolvimento foram aplicadas boas práticas, como:

- Renomear etapas do Power Query
- Organizar consultas
- Remover etapas desnecessárias
- Melhorar a legibilidade do processo ETL

---

## 💡 Conceitos Aprendidos

Neste projeto pratiquei:

- ETL no Power Query
- Linguagem M
- Diferença entre Linguagem M e DAX
- Consolidação de bases
- Tratamento de dados
- Modelagem para Power BI
- Organização das consultas
- Otimização do modelo

---

## 📝 Minhas Anotações

Durante o desenvolvimento deste projeto aprendi que:

- Primeiro tratei cada tabela individualmente.
- Depois uni todas as tabelas em uma única base consolidada.
- Substituí valores criando novas colunas ao invés de alterar os dados originais.
- Aprendi o conceito de **De-Para** para substituir códigos por nomes.
- Entendi a diferença entre **Linguagem M** (Power Query) e **DAX**.
- Mantive a padronização da quantidade de caracteres nas colunas.
- Ocultei colunas auxiliares para deixar o modelo mais limpo.
- Aprendi a criar um menu interativo utilizando indicadores (Bookmarks) para mostrar e esconder elementos do dashboard.

---

## 🚀 Competências Desenvolvidas

- Power BI
- Power Query
- ETL
- Linguagem M
- DAX
- Modelagem de Dados
- Consolidação de Bases
- Limpeza de Dados
- Boas Práticas em BI