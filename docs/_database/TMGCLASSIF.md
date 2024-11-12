---
id: tmgclassif
title: '[MG] Classificação do Material'
description: Códigos de classificação de minerais.
authors:
    - Cassio Menezes
---
# TMGCLASSIF

## Detalhamento do Objeto

  Códigos de classificação de minerais.

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TMGPRODUTO | Tabela | [MG] Produto |

### Modelagem

```mermaid
erDiagram
    TMGPRODUTO ||--o{ TMGCLASSIF : contains

    TMGCLASSIF {
        number ID PK,FK "Id."
        varchar DESCRICAO "Descrição"
    }
    TMGPRODUTO {
        number CODPROD PK "Cód. Produto"
    }
```

``` mermaid
classDiagram
    class MgClassif{
      -BigDecimal id
      -String descricao
      +loadByPk(Object... keyValue)
      +loadByVO(DynamicVO vo)
      +persists() DynamicVO
    }
```

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 1.0 | 12/11/2025 | Cassio Menezes | Criação do documento |
