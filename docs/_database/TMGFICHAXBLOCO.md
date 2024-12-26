---
id: TMGFICHAXBLOCO
title: '[MG] Ficha x Bloco'
description: Ligacao entre a Ficha e o Bloco de origem.
authors:
    - Cassio Menezes
tags: 
- database
- table
---
# TMGFICHAXBLOCO

**Nome tabela**: TMGFICHAXBLOCO  
**Nome instância**: MgFichaXBloco

## Detalhamento do Objeto

A Ficha de Bloco é um facilitador que visa agrupar todas as informações a respeito de compras, produção, vendas, previsão de produção e todo o processo da vida do Bloco. 

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| [TMGFICHA](TMGFICHA.md) | Tabela | [MG] Ficha |
| [TMGBLOCO](TMGBLOCO.md) | Tabela | [MG] Bloco |

### Modelagem

```mermaid
erDiagram
    TMGFICHAXBLOCO ||--|| TMGBLOCO : contains
    TMGBLOCO ||--|| TMGPRODUTO : contains

    TMGFICHAXBLOCO {
        number CODEMP "Cód. Empresa"
        number IDBLOCO PK "Id. Bloco"
        number NUMARCACAO PK "Nro. Marcação"
        number SEQUENCIA PK "Sequência"
    }
    TMGBLOCO {
        number NUMARCACAO PK "Nro. Marcação"
        number SEQUENCIA PK "Sequência"
    }
    TMGPRODUTO {
        number CODPROD PK "Cód. Produto"
    }
```

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 1.0 | 19/12/2025 | Cassio Menezes | Criação do documento |
