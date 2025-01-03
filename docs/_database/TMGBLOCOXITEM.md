---
id: tmgblocoxitem
title: '[MG] Bloco x Item'
description: Ligacao entre um Bloco e um Item do Pedido de Compra de Marcacao gerado.
authors:
    - Cassio Menezes
tags: 
- table
---
# TMGBLOCOXITEM

## Detalhamento do Objeto

Ligação entre um Bloco e o Item do Pedido de Compra de Marcação respectivo.

| Evento | Valor |
|--|--|
| **Nome tabela** | TMGBLOCOXITEM |
| **Descrição** | [MG] Bloco x Item |
| **Nome instância** | MgBlocoXItem |
| **Descrição instância** | Item do Pedido de Compra |

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| [TMGBLOCO](TMGBLOCO.md) | Tabela | MgBloco |
| [TMGMARCACAO](TMGMARCACAO.md) | Tabela | MgMarcacao |
| [TMGMARCACAOXPEDIDO](TMGMARCACAOXPEDIDO.md) | Tabela | MgMarcacaoXPedido |

### Modelagem

```mermaid
erDiagram
    TMGMARCACAO ||--|{ TMGBLOCO : contains
    TMGMARCACAO o|--|o TMGMARCACAOXPEDIDO : places
    TMGMARCACAOXPEDIDO ||--|| TGFCAB : contains
    TGFCAB ||--|{ TGFITE : contains
    TMGMARCACAOXPEDIDO ||--|{ TMGBLOCOXITEM : contains
    TMGBLOCOXITEM ||--|| TGFITE : contains
    TMGBLOCO ||--|| TMGBLOCOXITEM : contains


    TMGMARCACAO {
        number NUMARCACAO PK "Nro. Marcação"
    }
    TMGBLOCO {
        number NUMARCACAO PK "Nro. Marcação"
        number SEQUENCIA PK "Sequência"
    }
    TMGMARCACAOXPEDIDO {
        number NUMARCACAO PK,FK "Nro. Marcação"
        number NUNOTA PK,FK "Nro. Único"
    }
    TMGBLOCOXITEM {
        number NUMARCACAO PK,FK "Nro. Marcação"
        number NUNOTA PK,FK "Nro. Único"
        number SEQUENCIA PK,FK "Seq.Item"
        number SEQMARCACAO PK,FK "Seq.Marcação"
    }
    TGFCAB {
        number NUNOTA PK "Nro. Único"
    }
    TGFITE {
        number NUNOTA PK "Nro. Único"
        number SEQUENCIA PK "Sequência"
    }
```

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 1.2 | 03/01/2025 | Cassio Menezes | Nova estrutura |
| 1.0 | 27/12/2024 | Cassio Menezes | Criação do documento |