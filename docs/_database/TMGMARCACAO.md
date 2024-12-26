---
id: tmgmarcacao
title: '[MG] Marcacao'
description: Representacao da negociacao de compra de Blocos.
authors:
    - Cassio Menezes
tags: 
- database
- table
---
# TMGMARCACAO

**Nome tabela**: TMGMARCACAO  
**Nome instância**: MgMarcacao

## Detalhamento do Objeto

O Marcador compra Blocos diretamente na pedreira, anotando as medidas (bruta e líquida) do material, valor unitário de compra, valor do frete, classificação e observações. Cada bloco tem um número de pedreira próprio.

Esta tabela registra as negociações de compra de blocos de uma determinada pedreira e é a base para a geração de pedidos de compra de marcação.

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TSIEMP | Tabela | Empresa |
| TGFVEN | Tabela | Vendedor |
| TGFPAR | Tabela | Parceiro |
| TGFTPV | Tabela | TipoNegociacao |
| TFFCAB | Tabela | CabecalhoNota
| [TMGBLOCO](TMGBLOCO.md) | Tabela | [MG] Bloco |
| [TMGEMP](TMGEMP.md) | Tabela | [MG] Preferencias por Empresa |
| [TMGMARCACAOXPEDIDO](TMGMARCACAOXPEDIDO.md) | Tabela | [MG] Marcacao x Pedido |

### Modelagem

```mermaid
erDiagram
    TMGMARCACAO ||--|| TSIEMP : contains
    TMGMARCACAO ||--|{ TMGBLOCO : contains
    TMGMARCACAO ||--|| TGFVEN : contains
    TMGMARCACAO ||--|| TGFPAR : contains
    TMGMARCACAO ||--|| TGFTPV : contains
    TMGMARCACAO o|--|o TMGMARCACAOXPEDIDO: places
    TMGMARCACAOXPEDIDO o|--|o TGFCAB: constains

    TSIEMP ||--|| TMGEMP : "exists ATIVO='S'"

    TMGMARCACAO {
        number NUMARCACAO PK "Nro. Marcação"
        number CODEMP "Cód. Empresa"
        number CODVEND FK "Marcador"
        number CODPARC FK "Cód. Parceiro"
        number CODTIPVENDA FK "Tipo Negociação"
        date DTMARCACAO "Dt. Marcação"
        varchar OBSERVACAO "Observação"
    }
    TSIEMP {
        number CODEMP PK "Cód. Empresa"
    }
    TMGEMP {
        number CODEMP PK "Cód. Empresa"
        varchar ATIVO "Ativo"
    }
    TMGBLOCO {
        number NUMARCACAO PK "Nro. Marcação"
        number NUBLOCO PK "Id. Bloco"
    }
    TGFVEN {
        number CODVEND PK "Código"
    }
    TGFPAR {
        number CODPARC PK "Cód. Parceiro"
    }
    TGFTPV {
        number CODTIPVENDA PK "Tipo de Negociação"
    }
    TMGMARCACAOXPEDIDO {
        number NUMARCACAO PK "Nro. Marcação"
        number NUNOTA PK "Nro. Único"
    }
    TGFCAB {
        number NUNOTA PK "Nro. Único"
    }
```

[Script](https://github.com/Pwn-Dev/MarGran-Dev/blob/main/PWN-DbScripts/TMGBLOCO.sql)

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 1.0 | 04/12/2025 | Cassio Menezes | Criação do documento |
