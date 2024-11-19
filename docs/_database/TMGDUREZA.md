---
id: tmgdureza
title: '[MG] Classificação de Dureza'
description: Códigos de classificação de dureza de minerais.
authors:
    - Cassio Menezes
---
# TMGDUREZA

## Detalhamento do Objeto

  Códigos de classificação de dureza de minerais.

### Dicionário de Dados

#### Instância

| Nome | Descrição | path |
|--|--|--|
| MgDureza | Classificação de Dureza de Minerais | `<descriptor location="br/com/pwn/margran/core/dwfdata/dd/MgDureza.xml" name="MgDureza" />` |

#### Lançador

| Nome | Descrição |
|--|--|
| MgDureza | Classificação de Dureza de Minerais |

```powershell
${dynaform:MgDureza}
br.com.pwn.margran.core.mgdureza
```

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TMGPRODUTO | Tabela | [MG] Produto |

### Modelagem

```mermaid
erDiagram
    TMGPRODUTO ||--|| TMGDUREZA : contains

    TMGDUREZA {
        number ID PK "Id."
        varchar DESCRICAO "Descrição"
    }
    TMGPRODUTO {
        number CODPROD PK "Cód. Produto"
        number IDDUREZA FK "Classificação de Dureza"
    }
```

```mermaid
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
| 1.1 | 19/11/2025 | Cassio Menezes | DD |
| 1.0 | 12/11/2025 | Cassio Menezes | Criação do documento |
