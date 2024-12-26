---
id: tmgmarcacaoxpedido
title: '[MG] Marcacao x Pedido'
description: Ligacao entre Marcacao e Pedido de Compra de Marcacao gerado.
authors:
    - Cassio Menezes
tags: 
- database
- table
---
# TMGMARCACAOXPEDIDO

**Nome tabela**: TMGMARCACAOXPEDIDO  
**Descrição**: [MG] Marcacao x Pedido  
**Nome instância**: MgMarcacaoXPedido

## Detalhamento do Objeto

### Modelagem

```mermaid
erDiagram
    TMGMARCACAO o|--|o TMGMARCACAOXPEDIDO : places
    TMGMARCACAOXPEDIDO ||--|| TGFCAB : contains

    TMGMARCACAO {
        number NUMARCACAO PK "Nro. Marcação"
    }
    TMGMARCACAOXPEDIDO {
        number NUMARCACAO PK, FK "Nro. Marcação"
        number NUNOTA PK, FK "Nro. Único"
    }
    TGFCAB {
        number NUNOTA PK "Nro. Único"
    }
```

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 1.0 | 23/12/2025 | Cassio Menezes | Criação do documento |