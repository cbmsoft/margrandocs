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

## Detalhamento do Objeto

O Marcador compra Blocos diretamente na pedreira, anotando as medidas (bruta e líquida) do material, valor unitário de compra, valor do frete, classificação e observações. Cada bloco tem um número de pedreira próprio.

Esta tabela registra as negociações de compra de blocos de uma determinada pedreira e é a base para a geração de pedidos de compra de marcação.

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TSIEMP | Tabela | Empresa |
| TGFVEN | | |
| TGFPAR | | |
| TGFTPV | | |
| [TMGBLOCO](TMGBLOCO.md) | Tabela | [MG] Bloco |

### Modelagem

```mermaid
erDiagram
    TMGMARCACAO ||--|{ TMGBLOCO : contains
    TMGMARCACAO ||--|| TSIEMP : contains
    TMGMARCACAO ||--|| TGFVEN : contains
    TMGMARCACAO ||--|| TGFPAR : contains
    TMGMARCACAO ||--|| TGFTPV : contains

    TMGMARCACAO {
        number NUMARCACAO PK "Nro. Marcação"
        number CODEMP "Cód. Empresa"
        number CODVEND FK "Marcador"
        number CODPARC FK "Cód. Parceiro"
        number CODTIPVENDA FK "Tipo Negociação"
        date DTMARCACAO "Dt. Marcação"
        varchar OBSERVACAO "Observação"
    }
    TMGBLOCO {
        number NUMARCACAO PK "Nro. Marcação"
        number NUBLOCO PK "Id. Bloco"
    }
    TSIEMP {
        number CODEMP PK "Cód. Empresa"
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
```

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 1.0 | 04/12/2025 | Cassio Menezes | Criação do documento |
