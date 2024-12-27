---
id: tmgblocoxitem
title: '[MG] Bloco x Item'
description: Ligacao entre um Bloco e um Item do Pedido de Compra de Marcacao gerado.
authors:
    - Cassio Menezes
tags: 
- database
- table
---
# TMGBLOCOXITEM

**Nome tabela**: TMGBLOCOXITEM  
**Descrição**: [MG] Bloco x Item  
**Nome instância**: MgBlocoXItem

## Detalhamento do Objeto

### Modelagem

```mermaid
erDiagram
    TMGMARCACAO o|--|o TMGMARCACAOXPEDIDO : places
    TMGMARCACAOXPEDIDO ||--|{ TMGBLOCOXITEM : contains
    TMGBLOCOXITEM ||--|| TGFITE : contains
    TMGBLOCO ||--|| TMGBLOCOXITEM : contains

    TMGMARCACAO {
        number NUMARCACAO PK "Nro. Marcação"
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
    TMGBLOCO {
        number NUMARCACAO PK "Nro. Marcação"
        number SEQUENCIA PK "Sequência"
    }
    TGFITE {
        number NUNOTA PK "Nro. Único"
        number SEQUENCIA PK "Sequência"
    }
```

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 1.0 | 27/12/2025 | Cassio Menezes | Criação do documento |