# 📊 Medidas DAX

Este documento reúne todas as medidas DAX utilizadas no dashboard de análise de vendas.

---

## 💰 Faturamento

### Faturamento Total

```DAX
FATURAMENTO =
SUM(CONSOLIDADA[TOTAL_VENDA])
```

**Descrição**

Calcula o faturamento total das vendas.

---

### Valor Cancelado

```DAX
CANCELADO =
SUM(CONSOLIDADA[VALOR_CANCELADO])
```

**Descrição**

Soma o valor total dos cancelamentos.

---

## 📅 Faturamento por Ano

### FAT 2017

```DAX
FAT 2017 =
SUM(META_2017[TOTAL_VENDA]) + 0
```

Calcula o faturamento de 2017.

---

### FAT 2018

```DAX
FAT 2018 =
SUM(META_2018[TOTAL_VENDA]) + 0
```

Calcula o faturamento de 2018.

---

### FAT 2019

```DAX
FAT 2019 =
SUM(META_2019[TOTAL_VENDA]) + 0
```

Calcula o faturamento de 2019.

---

## 📈 Crescimento

### Crescimento Percentual

```DAX
CRESCIMENTO PORC =
DIVIDE(
    [FAT 2019] - [FAT 2018],
    [FAT 2018]
)
```

**Descrição**

Calcula o crescimento percentual entre 2018 e 2019.

---

## 🎯 Metas

### Meta 2018

```DAX
META 2018 = 165000
```

Meta definida para 2018.

---

### Meta 2019

```DAX
META 2019 = 320000
```

Meta definida para 2019.

---

## 🎨 Formatação Condicional

### Cor do Faturamento

```DAX
COR FATURAMENTO =
IF(
    [FAT 2017] >= [FAT 2018],
    "GREEN",
    "YELLOW"
)
```

**Descrição**

Define a cor utilizada na formatação condicional dos indicadores.

---

## 🔍 Filtros

### Vendedor Selecionado

```DAX
FILTRO VENDEDOR =
SELECTEDVALUE(
    CONSOLIDADA[VENDEDOR],
    "Selecione um Vendedor"
)
```

Retorna o vendedor selecionado no filtro.

---

### Valor da Venda Selecionada

```DAX
FILTRO VENDA =
SELECTEDVALUE(
    CONSOLIDADA[TOTAL_VENDA],
    "Selecione um Vendedor"
)
```

Retorna o valor da venda selecionada.

---

### Texto Toggle

```DAX
TEXTO TOGGLE =
SELECTEDVALUE(CONSOLIDADA[RECEBIMENTO])
```

Utilizado para alterar textos dinamicamente conforme a seleção realizada.

---

## 📊 Limites

### Máximo

```DAX
MAXIMO = 1000000
```

Valor máximo utilizado em indicadores.

---

### Mínimo

```DAX
MINIMO = 0
```

Valor mínimo utilizado em indicadores.