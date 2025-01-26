---
id: tmgfichatecxeqp
title: '[MG] Ficha Técnica x Equipamento'
description: Equipamentos permitidos para uma Ficha técnica.
authors:
    - Cassio Menezes
tags: 
- database
---
# TMGFICHATECXEQP

Filtro a ser aplicado no processo de Serrada de Blocos para validar a inclusão da matéria prima, no caso Blocos.

## Detalhamento do Objeto

| Evento | Valor |
|--|--|
| **Nome tabela** | TMGFICHATECXEQP |
| **Descrição** | [MG] Ficha Técnica x Equipamento |
| **Nome instância** | MgFichaTecnicaXEqp |
| **Descrição instância** | Equipamento |

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TSIUSU | Tabela | Usuario |
| [TMGEQUIPAMENTO](TMGEQUIPAMENTO.md) | Tabela | [MG] Equipamento |
| [TMGFICHATEC](TMGFICHATEC.md) | Tabela | [MG] Ficha Técnica |
| [TMGFICHATECXEQPXMP](TMGFICHATECXEQPXMP.md) | Tabela | [MG] Ficha Técnica x Equipamento x Insumo |

### Modelagem

```mermaid
erDiagram
    TMGFICHATEC |o--o{ TMGFICHATECXEQP : contains
    TMGFICHATECXEQP ||--|| TMGEQUIPAMENTO : contains
    TMGFICHATECXEQP ||--|| TSIUSU : contains

	TMGFICHATEC {
		number IDFICHATEC PK "Id. Ficha Técnica"
	}
	TMGFICHATECXEQP {
		number IDFICHATEC PK "Id. Ficha Técnica"
        number IDEQUIPAMENTO PK,FK "Id. Equipamento"
        number CODUSUINC FK "Cód. Usuário Inc."
        date DHINC "Dt./Hr.Inclusão"
        number CODUSU FK "Cód. Usuário"
        date DHALTER "Dt./Hr.Alteração"
	}
	TMGEQUIPAMENTO {
		number IDEQUIPAMENTO PK "Id. Equipamento"
    }
    TSIUSU {
        number CODUSU PK "Cód. Usuário"
    }
```

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 1.0 | 26/01/2025 | Cassio Menezes | Criação do documento |
