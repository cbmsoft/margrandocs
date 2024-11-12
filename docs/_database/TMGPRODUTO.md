---
id: tmgproduto
title: Produto [MG]
# prettier-ignore
description: Campos complementares necessários aos procedimentos do módulo Mármore e Granito.
authors:
    - Cassio Menezes
---
# TMGPRODUTO

## Detalhamento do Objeto

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TGFPRO | Tabela | Produto |

### Modelagem

```mermaid
erDiagram
    TGFPRO ||--|| TMGPRODUTO : contains

    TMGPRODUTO {
        number CODPROD PK,FK "Cód. Produto"
        varchar TIPOPROD "Tipo do Produto"
        varchar DESCRINGLES "Descrição em Inglês"
        number IDDUREZA FK "Classificação de Dureza"
        number PESOM3 "Peso por M³/M² (ton)"
        number FATQTDCHAPAS "Fator para Calculo da Qtde de Chapas"
        number CODCLASSMAT FK "Classificação do Material"
        varchar TIPOPOLI "Tipo de Polimento"
        number ESPESSLAMFIO "Espessura da Lâmina ou fio (cm)"
        number ESPESSURACHAPA "Espessura da Chapa (em cm)"
        number BKVINCULO "Prod. Bloco p/ Vínculo"
        number ALTURAUTIL "Altura Útil mm (insumos: Lâminas)"
        number PESOLAMINA "Peso KG (Insumos:Laminas)"
        number PESOPMM "Peso por Milimetro (insumos: Lâminas)"
    }
    TGFPRO {
        number CODPROD PK "Código"
    }
```

``` mermaid
---
title: mgProduto
---
classDiagram
    class mgProduto{
      -BigDecimal codProd
      -String tipoProd
      -String descrIngles
      -BigDecimal idDureza
      -BigDecimal pesoM3
      -BigDecimal fatQtdChapas
      -BigDecimal codClassMat
      -String tipoPoli
      -BigDecimal espessLamFio
      -BigDecimal espessuraChapa
      -BigDecimal bkVinculo
      -BigDecimal alturaUtil
      -BigDecimal pesoLamina
      -BigDecimal pesoPMm
      +loadByPk(Object... keyValue)
      +loadByVO(DynamicVO vo)
      +persists() DynamicVO
    }
```

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 1.0 | 12/11/2025 | Cassio Menezes | Criação do documento |