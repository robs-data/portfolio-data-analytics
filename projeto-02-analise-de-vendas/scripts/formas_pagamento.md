# 💳 Medidas DAX - Formas de Pagamento

Estas medidas analisam o faturamento e a quantidade de vendas por forma de pagamento.

---

# Faturamento em Dinheiro

```DAX
FAT DIN =
CALCULATE(
    SUM(CONSOLIDADA[TOTAL_VENDA]),
    FILTER(
        CONSOLIDADA,
        CONSOLIDADA[FORMA DE PAGAMENTO] = "DINHEIRO"
    )
) + 0
```

Calcula o faturamento pago em dinheiro.

---

# Faturamento Cartão Presente

```DAX
FAT CARTÃO P =
CALCULATE(
    SUM(CONSOLIDADA[TOTAL_VENDA]),
    FILTER(
        CONSOLIDADA,
        CONSOLIDADA[FORMA DE PAGAMENTO] = "CARTÃO PRESENTE"
    )
) + 0
```

Calcula o faturamento realizado com cartão presente.

---

# Faturamento Cartão Crédito

```DAX
FAT CREDITO =
CALCULATE(
    SUM(CONSOLIDADA[TOTAL_VENDA]),
    FILTER(
        CONSOLIDADA,
        CONSOLIDADA[FORMA DE PAGAMENTO] = "CARTÃO CREDITO"
    )
) + 0
```

Calcula o faturamento pago com cartão de crédito.

---

# Faturamento Cartão Débito

```DAX
FAT DEBITO =
CALCULATE(
    SUM(CONSOLIDADA[TOTAL_VENDA]),
    FILTER(
        CONSOLIDADA,
        CONSOLIDADA[FORMA DE PAGAMENTO] = "CARTÃO DEBITO"
    )
) + 0
```

Calcula o faturamento pago com cartão de débito.

---

# Faturamento Não Informado

```DAX
FAT NÃO INFORMADO =
CALCULATE(
    SUM(CONSOLIDADA[TOTAL_VENDA]),
    FILTER(
        CONSOLIDADA,
        CONSOLIDADA[FORMA DE PAGAMENTO] = "NÃO INFORMADO"
    )
) + 0
```

Calcula o faturamento das vendas sem forma de pagamento informada.

---

# Quantidade de vendas por Dinheiro

```DAX
QTDE DINHEIRO =
CALCULATE(
    COUNTA(CONSOLIDADA[N FISCAL]),
    FILTER(
        CONSOLIDADA,
        CONSOLIDADA[FORMA DE PAGAMENTO] = "DINHEIRO"
    )
) + 0
```

Conta as vendas pagas em dinheiro.

---

# Quantidade Cartão Crédito

```DAX
QTDE CREDITO =
CALCULATE(
    COUNTA(CONSOLIDADA[N FISCAL]),
    FILTER(
        CONSOLIDADA,
        CONSOLIDADA[FORMA DE PAGAMENTO] = "CARTÃO CREDITO"
    )
) + 0
```

Conta as vendas pagas com cartão de crédito.

---

# Quantidade Cartão Débito

```DAX
QTDE DEBITO =
CALCULATE(
    COUNTA(CONSOLIDADA[N FISCAL]),
    FILTER(
        CONSOLIDADA,
        CONSOLIDADA[FORMA DE PAGAMENTO] = "CARTÃO DEBITO"
    )
) + 0
```

Conta as vendas pagas com cartão de débito.

---

# Quantidade Cartão Presente

```DAX
QTDE C PRESENTE =
CALCULATE(
    COUNTA(CONSOLIDADA[N FISCAL]),
    FILTER(
        CONSOLIDADA,
        CONSOLIDADA[FORMA DE PAGAMENTO] = "CARTÃO PRESENTE"
    )
) + 0
```

Conta as vendas realizadas com cartão presente.

---

# Quantidade Não Informado

```DAX
QTDE FAT NÃO INFO =
CALCULATE(
    COUNTA(CONSOLIDADA[N FISCAL]),
    FILTER(
        CONSOLIDADA,
        CONSOLIDADA[FORMA DE PAGAMENTO] = "NÃO INFORMADO"
    )
) + 0
```

Conta as vendas cuja forma de pagamento não foi informada.