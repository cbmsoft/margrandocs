---
id: tmgfichatecxcip
title: '[MG] Ficha Técnica x Tarifas CIP'
description: Tarifas CIP aplicadas a uma Ficha técnica.
authors:
    - Cassio Menezes
tags: 
- database
---
# TMGFICHATECXCIP

Tarifas a serem utilizadas para cálculo de custo.

## Detalhamento do Objeto

| Evento | Valor |
|--|--|
| **Nome tabela** | TMGFICHATECXCIP |
| **Descrição** | [MG] Ficha Técnica x Tarifas CIP |
| **Nome instância** | MgFichaTecnicaXCIP |
| **Descrição instância** | Tarifas CIP |

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TGFPRO | Tabela | TarifasCIP |
| TGFVOL | Tabela | Volume |
| TSIUSU | Tabela | Usuario |
| [TMGDUREZA](TMGDUREZA.md) | Tabela | [MG] Classificação de Dureza |

### Modelagem

```mermaid
erDiagram
    TMGFICHATEC |o--o{ TMGFICHATECXCIP : contains
    TMGFICHATECXCIP ||--|| TGFPRO : contains
    TMGFICHATECXCIP ||--|| TGFVOL : contains
    TMGFICHATECXCIP ||--|| TSIUSU : contains
    TMGFICHATECXCIP ||--|| TIPOINDICE : enum
    TMGFICHATECXCIP ||--|| TIPOEXEC : enum

	TMGFICHATEC {
		number IDFICHATEC PK "Id. Ficha Técnica"
	}
	TMGFICHATECXCIP {
		number IDFICHATEC PK "Id. Ficha Técnica"
        number CODPRODTAR PK, FK "Tarifa"
        number QTD "Índice"
        varchar CODVOL FK "Un. Consumo"
        number VLRCUSUNIT "Custo Unitário"
        varchar TIPOINDICE "Tipo de Índice"
        varchar TIPOEXEC "Tipo de Execução"
        number CODUSUINC FK "Cód. Usuário Inc."
        date DHINC "Dt./Hr.Inclusão"
        number CODUSU FK "Cód. Usuário"
        date DHALTER "Dt./Hr.Alteração"
	}
    TGFPRO {
        number CODPROD PK "Código"
    }
    TGFVOL {
        number CODVOL PK "Sigla da Unidade"
    }
    TSIUSU {
        number CODUSU PK "Cód. Usuário"
    }
    TIPOINDICE {
        varchar F "Fixo"
        varchar V "Variável (Execução de atividades)"
    }
    TIPOEXEC {
        varchar N "Normal"
        varchar P "Parada"
        varchar T "Todos"
    }
```

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 1.0 | 21/01/2025 | Cassio Menezes | Criação do documento |
