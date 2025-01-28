---
id: tmgfichatecxeqpxmp
title: '[MG] Ficha Técnica x Equipmento x Insumo'
description: Insumos por Equipamento.
authors:
    - Cassio Menezes
tags: 
- database
---
# TMGFICHATECXEQPXMP

Filtro a ser aplicado no processo de Serrada de Blocos para validar a inclusão da matéria prima, no caso Blocos.

## Detalhamento do Objeto

| Evento | Valor |
|--|--|
| **Nome tabela** | TMGFICHATECXEQPXMP |
| **Descrição** | [MG] Ficha Técnica x Equipmento x Insumo |
| **Nome instância** | MgFichaTecnicaXEqpXMP |
| **Descrição instância** | Insumos |

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TGFPRO | Tabela | ProdutoMateriaPrima |
| TGFVOL | Tabela | Volume |
| TGFLOC | Tabela | LocalFinanceiro |
| TSIUSU | Tabela | Usuario |
| [TMGFICHATEC](TMGFICHATEC.md) | Tabela | [MG] Ficha Técnica |
| [TMGFICHATECXEQP](TMGFICHATECXEQP.md) | Tabela | [MG] Ficha Técnica x Equipamento |

### Modelagem

```mermaid
erDiagram
    TMGFICHATEC ||..o{ TMGFICHATECXEQP : contains
    TMGFICHATECXEQP |o--o{ TMGFICHATECXEQPXMP : contains
    TMGFICHATECXEQPXMP ||--|| TGFPRO : contains
    TGFPRO ||--|| TMGPRODUTO : exists
    TMGFICHATECXEQPXMP ||--|| TGFVOL : contains
    TMGFICHATECXEQPXMP ||--|| TGFLOC : contains
    TMGFICHATECXEQPXMP ||--|| TSIUSU : contains
    TMGFICHATECXEQPXMP ||--|| TIPOINDICE : enum
    TMGFICHATECXEQPXMP ||--|| TIPOEXEC : enum

	TMGFICHATEC {
		number IDFICHATEC PK "Id. Ficha Técnica"
	}
	TMGFICHATECXEQP {
		number IDFICHATEC PK "Id. Ficha Técnica"
        number IDEQUIPAMENTO PK,FK "Id. Equipamento"
	}
	TMGFICHATECXEQPXMP {
		number IDFICHATEC PK "Id. Ficha Técnica"
        number IDEQUIPAMENTO PK,FK "Id. Equipamento"
        number CODPRODMP PK, FK "Insumo"
        number QTD "Qtd. Prevista"
        varchar CODVOL FK "Unidade"
        number VLRCUSUNIT "Custo Unitário"
        number CODLOCALORIG FK "Cód. Local"
        varchar TIPOINDICE "Tipo de Índice"
        varchar TIPOEXEC "Tipo de Execução"
        number CODUSUINC FK "Cód. Usuário Inc."
        date DHINC "Dt./Hr.Inclusão"
        number CODUSU FK "Cód. Usuário"
        date DHALTER "Dt./Hr.Alteração  "
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
