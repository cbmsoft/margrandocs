---
id: tmgfichatecxeqpxcip
title: '[MG] Ficha Técnica x Equipamento x Tarifa'
description: Insumos por Classificação de Dureza.
authors:
    - Cassio Menezes
tags: 
- database
---
# TMGFICHATECXEQPXCIP

Filtro a ser aplicado no processo de Serrada de Blocos para validar a inclusão da matéria prima, no caso Blocos.

## Detalhamento do Objeto

| Evento | Valor |
|--|--|
| **Nome tabela** | TMGFICHATECXEQPXCIP |
| **Descrição** | [MG] Ficha Técnica x Equipamento x Tarifa |
| **Nome instância** | MgFichaTecnicaXEqpXCIP |
| **Descrição instância** | Tarifas CIP |

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TGFPRO | Tabela | TarifasCIP |
| TGFVOL | Tabela | Volume |
| TGFLOC | Tabela | LocalFinanceiro |
| TSIUSU | Tabela | Usuario |
| [TMGFICHATEC](TMGFICHATEC.md) | Tabela | [MG] Ficha Técnica |
| [TMGFICHATECXEQP](TMGFICHATECXEQP.md) | Tabela | [MG] Ficha Técnica x Equipamento |

### Modelagem

```mermaid
erDiagram
    TMGFICHATEC ||..o{ TMGFICHATECXEQP : contains
    TMGFICHATECXEQP |o--o{ TMGFICHATECXEQPXCIP : contains
    TMGFICHATECXEQPXCIP ||--|| TGFPRO : contains
    TGFPRO ||--|| TMGPRODUTO : exists
    TMGFICHATECXEQPXCIP ||--|| TGFVOL : contains
    TMGFICHATECXEQPXCIP ||--|| TGFLOC : contains
    TMGFICHATECXEQPXCIP ||--|| TSIUSU : contains
    TMGFICHATECXEQPXCIP ||--|| TIPOINDICE : enum
    TMGFICHATECXEQPXCIP ||--|| TIPOEXEC : enum

	TMGFICHATEC {
		number IDFICHATEC PK "Id. Ficha Técnica"
	}
	TMGFICHATECXEQP {
		number IDFICHATEC PK "Id. Ficha Técnica"
        number IDEQUIPAMENTO PK,FK "Id. Equipamento"
	}
	TMGFICHATECXEQPXCIP {
		number IDFICHATEC PK "Id. Ficha Técnica"
        number IDEQUIPAMENTO PK,FK "Id. Equipamento"
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
    TMGPRODUTO {
        number CODPROD PK,FK "Cód. Produto"
    }
    TGFVOL {
        number CODVOL PK "Sigla da Unidade"
    }
    TGFLOC {
        number CODLOCAL PK "Cód. Local"
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
| 1.0 | 28/01/2025 | Cassio Menezes | Criação do documento |
