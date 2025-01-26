---
id: tmgfichatecxdurxmp
title: '[MG] Ficha Técnica x Dureza x Insumo'
description: Insumos por Classificação de Dureza.
authors:
    - Cassio Menezes
tags: 
- database
---
# TMGFICHATECXDURXMP

Filtro a ser aplicado no processo de Serrada de Blocos para validar a inclusão da matéria prima, no caso Blocos.

## Detalhamento do Objeto

| Evento | Valor |
|--|--|
| **Nome tabela** | TMGFICHATECXDURXMP |
| **Descrição** | [MG] Ficha Técnica x Dureza x Insumo |
| **Nome instância** | MgFichaTecnicaXDurXMP |
| **Descrição instância** | Insumos |

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TGFPRO | Tabela | ProdutoMateriaPrima |
| TGFVOL | Tabela | Volume |
| TGFLOC | Tabela | 
| TSIUSU | Tabela | Usuario |
| [TMGFICHATEC](TMGFICHATEC.md) | Tabela | [MG] Ficha Técnica |
| [TMGFICHATECXDUR](TMGFICHATECXDUR.md) | Tabela | [MG] Ficha Técnica x Dureza |

### Modelagem

```mermaid
erDiagram
    TMGFICHATEC ||..o{ TMGFICHATECXDUR : contains
    TMGFICHATECXDUR |o--o{ TMGFICHATECXDURXMP : contains
    TMGFICHATECXDURXMP ||--|| TGFPRO : contains
    TGFPRO ||--|| TMGPRODUTO : exists
    TMGFICHATECXDURXMP ||--|| TGFVOL : contains
    TMGFICHATECXDURXMP ||--|| TGFLOC : contains
    TMGFICHATECXDURXMP ||--|| TSIUSU : contains
    TMGFICHATECXDURXMP ||--|| TIPOINDICE : enum
    TMGFICHATECXDURXMP ||--|| TIPOEXEC : enum

	TMGFICHATEC {
		number IDFICHATEC PK "Id. Ficha Técnica"
	}
	TMGFICHATECXDUR {
		number IDFICHATEC PK "Id. Ficha Técnica"
        number IDDUREZAINI PK,FK "Dureza Inicial"
        number IDDUREZAFIN PK,FK "Dureza Final"
	}
	TMGFICHATECXDURXMP {
		number IDFICHATEC PK "Id. Ficha Técnica"
        number IDDUREZAINI PK,FK "Dureza Inicial"
        number IDDUREZAFIN PK,FK "Dureza Final"
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
| 1.0 | 23/01/2025 | Cassio Menezes | Criação do documento |
