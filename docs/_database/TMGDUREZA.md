---
id: tmgdureza
title: '[MG] Dureza'
description: Códigos de classificação de dureza de minerais.
authors:
    - Cassio Menezes
---
# TMGDUREZA

## Detalhamento do Objeto

  Códigos de classificação de dureza de minerais.

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TMGPRODUTO | Tabela | [MG] Produto |

### Modelagem

```mermaid
erDiagram
    TMGPRODUTO ||--o{ TMGDUREZA : contains

    TMGDUREZA {
        number ID PK "Id."
        varchar DESCRICAO "Descrição"
    }
    TMGPRODUTO {
        number CODPROD PK "Cód. Produto"
        number IDDUREZA FK "Classificação de Dureza"
    }
```

``` mermaid
classDiagram
    class MgDureza{
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
