---
id: tmgficha
title: '[MG] Ficha'
description: Representacao da estrutura da Ficha de Bloco.
authors:
    - Cassio Menezes
tags: 
- table
---
# TMGFICHA

## Detalhamento do Objeto

A Ficha de Bloco é um facilitador que visa agrupar todas as informações a respeito de compras, produção, vendas, previsão de produção e todo o processo da vida do Bloco. 

| Evento | Valor |
|--|--|
| **Nome tabela** | TMGFICHA |
| **Descrição** | [MG] Ficha Bloco |
| **Nome instância** | MgFicha |
| **Descrição instância** | Ficha Bloco |
| **Lançador** |
| Descrição do Controle | [MG] Ficha Bloco |
| Identificador | br.com.sankhya.pwn.margran.Ficha |
| Evento | ${dynaform:MgFicha} |
| contexto | pwnmargran |
| entityName | MgFicha |
| resourceID | br.com.pwn.margran.ficha |

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| [TMGFICHAXBLOCO](TMGFICHAXBLOCO.md) | Tabela | [MG] Ficha x Bloco |
| [TMGBLOCO](TMGBLOCO.md) | Tabela | [MG] Bloco |

### Modelagem

```mermaid
erDiagram
    TMGFICHA ||--|| TSIEMP : contains
    TMGFICHA ||--|| TMGFICHAXBLOCO : contains
    TMGFICHAXBLOCO ||--|| TMGBLOCO : contains

    TSIEMP ||--|| TMGEMP : exists

    TMGFICHA {
        number CODEMP PK "Cód. Empresa"
        number IDBLOCO PK "Id. Bloco"
        number COMPRIMENTO_SAI "Comprimento Saída"
        number ALTURA_SAI "Altura Saída"
        number LARGURA_SAI "Largura Saída"
    }
    TMGFICHAXBLOCO {
        number CODEMP PK "Cód. Empresa"
        number IDBLOCO PK "Id. Bloco"
        number NUMARCACAO PK "Nro. Marcação"
        number SEQUENCIA PK "Sequência"
    }
    TMGBLOCO {
        number NUMARCACAO PK "Nro. Marcação"
        number SEQUENCIA PK "Sequência"
    }
    TSIEMP {
        number CODEMP PK "Cód. Empresa"
    }
    TMGEMP {
        number CODEMP PK "Cód. Empresa"
    }
```

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 1.2 | 03/01/2025 | Cassio Menezes | Nova estrutura |
| 1.0 | 19/12/2024 | Cassio Menezes | Criação do documento |
