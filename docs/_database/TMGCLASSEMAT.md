---
id: tmgclassemat
title: '[MG] Classe de Material'
description: Códigos de classes de materiais.
authors:
    - Cassio Menezes
tags: 
- database
- table
---
# TMGCLASSEMAT

## Detalhamento do Objeto

  Códigos de classes de materiais.

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TMGPRODUTO | Tabela | [MG] Produto |

### Modelagem

```mermaid
erDiagram
    TMGPRODUTO ||--|| TMGCLASSEMAT : contains

    TMGCLASSEMAT {
        number ID PK "Id."
        varchar DESCRICAO "Descrição"
    }
    TMGPRODUTO {
        number CODPROD PK "Cód. Produto"
        number CODCLASSMAT FK "Classificação do Material"
    }
```

```mermaid
classDiagram
    class MgClasseMat{
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
| 1.1 | 19/11/2025 | Cassio Menezes | Ajuste nomenclatura |
| 1.0 | 12/11/2025 | Cassio Menezes | Criação do documento |
