---
id: tmgficha
title: '[MG] Ficha'
description: Representacao da estrutura de um Ficha.
authors:
    - Cassio Menezes
tags: 
- database
- table
---
# TMGFICHA

## Detalhamento do Objeto

A Ficha de Bloco é um facilitador que visa agrupar todas as informações a respeito de compras, produção, vendas, previsão de produção e todo o processo da vida do Bloco. 

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| [TMGFICHAXBLOCO](TMGFICHAXBLOCO.md) | Tabela | [MG] Ficha x Bloco |
| [TMGBLOCO](TMGBLOCO.md) | Tabela | [MG] Bloco |

### Modelagem

```mermaid
erDiagram
    TMGFICHA ||--|| TMGFICHAXBLOCO : contains
    TMGFICHAXBLOCO ||--|| TMGBLOCO : contains
    TMGBLOCO ||--|| TMGPRODUTO : contains

    TMGFICHA {
        number CODEMP "Cód. Empresa"
        number IDBLOCO PK "Id. Bloco"
        number COMPRIMENTO_SAI "Comprimento Saída"
        number ALTURA_SAI "Altura Saída"
        number LARGURA_SAI "Largura Saída"
    }
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
