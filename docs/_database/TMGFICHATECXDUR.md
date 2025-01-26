---
id: tmgfichatecxdur
title: '[MG] Ficha Técnica x Dureza'
description: Durezas permitidas para uma Ficha técnica.
authors:
    - Cassio Menezes
tags: 
- database
---
# TMGFICHATECXDUR

Filtro a ser aplicado no processo de Serrada de Blocos para validar a inclusão da matéria prima, no caso Blocos.

## Detalhamento do Objeto

| Evento | Valor |
|--|--|
| **Nome tabela** | TMGFICHATECXDUR |
| **Descrição** | [MG] Dureza Permitida |
| **Nome instância** | MgFichaTecnicaXDur |
| **Descrição instância** | Dureza Permitida |

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TSIUSU | Tabela | Usuario |
| [TMGDUREZA](TMGDUREZA.md) | Tabela | [MG] Classificação de Dureza |
| [TMGFICHATEC](TMGFICHATEC.md) | Tabela | [MG] Ficha Técnica |
| [TMGFICHATECXDURXMP](TMGFICHATECXDURXMP.md) | Tabela | [MG] Ficha Técnica x Dureza x Insumo |

### Modelagem

```mermaid
erDiagram
    TMGFICHATEC |o--o{ TMGFICHATECXDUR : contains
    TMGFICHATECXDUR ||--|| TMGDUREZA : contains
    TMGFICHATECXDUR ||--|| TSIUSU : contains

	TMGFICHATEC {
		number IDFICHATEC PK "Id. Ficha Técnica"
	}
	TMGFICHATECXDUR {
		number IDFICHATEC PK "Id. Ficha Técnica"
        number IDDUREZAINI PK,FK "Dureza Inicial"
        number IDDUREZAFIN PK,FK "Dureza Final"
        number CODUSUINC FK "Cód. Usuário Inc."
        date DHINC "Dt./Hr.Inclusão"
        number CODUSU FK "Cód. Usuário"
        date DHALTER "Dt./Hr.Alteração"
	}
    TMGDUREZA {
        number ID PK "Id."
    }
    TSIUSU {
        number CODUSU PK "Cód. Usuário"
    }
```

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 1.0 | 21/01/2025 | Cassio Menezes | Criação do documento |
