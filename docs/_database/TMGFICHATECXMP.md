---
id: tmgfichatecxmpp
title: '[MG] Ficha Técnica x Insumos'
description: Insumos aplicadas a uma Ficha técnica.
authors:
    - Cassio Menezes
tags: 
- database
---
# TMGFICHATECXMP

## Detalhamento do Objeto

| Evento | Valor |
|--|--|
| **Nome tabela** | TMGFICHATECXMP |
| **Descrição** | [MG] Ficha Técnica x Insumos |
| **Nome instância** | MgFichaTecnicaXMP |
| **Descrição instância** | Insumos |

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TGFPRO | Tabela | ProdutoMateriaPrima |
| TGFVOL | Tabela | Volume |
| TGFLOC | Tabela | 
| TSIUSU | Tabela | Usuario |
| [TMGFICHATEC](TMGFICHATEC.md) | Tabela | [MG] Ficha Técnica |
| [TMGPRODUTO](TMGPRODUTO.md) | Tabela | [MG] Produto |

### Modelagem

```mermaid
erDiagram
    TMGFICHATEC |o--o{ TMGFICHATECXMP : contains
    TMGFICHATECXMP ||--|| TGFPRO : contains
    TGFPRO ||--|| TMGPRODUTO : exists
    TMGFICHATECXMP ||--|| TGFVOL : contains
    TMGFICHATECXMP ||--|| TGFLOC : contains
    TMGFICHATECXMP ||--|| TSIUSU : contains
    TMGFICHATECXMP ||--|| TIPOINDICE : enum
    TMGFICHATECXMP ||--|| TIPOEXEC : enum

	TMGFICHATEC {
		number IDFICHATEC PK "Id. Ficha Técnica"
	}
	TMGFICHATECXMP {
		number IDFICHATEC PK "Id. Ficha Técnica"
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
| 1.0 | 21/01/2025 | Cassio Menezes | Criação do documento |
