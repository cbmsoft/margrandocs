---
id: tmgserv
title: '[MG] Serviço'
description: Serviço.
authors:
    - Cassio Menezes
tags: 
- database
---
# TMGSERV

## Detalhamento do Objeto

Serviços a serem utilizados na transformação de blocos e chapas.

| Evento | Valor |
|--|--|
| **Nome tabela** | TMGSERV |
| **Descrição** | [MG] Serviço |
| **Nome instância** | MgServico |
| **Descrição instância** | Serviço |
| **Lançador** |
| Descrição do Controle | [MG] Serviço |
| Identificador | br.com.sankhya.pwn.margran.Servico |
| Evento | ${dynaform:MgServico} |
| contexto | pwnmargran |
| entityName | MgServico |
| resourceID | br.com.pwn.margran.servico |

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TSIUSU | Tabela | Usuario |
| [TMGTIPOSERV](TMGTIPOSERV.md) | Tabela | [MG] Tipo de Serviço |
| [TMGSETOR](TMGSETOR.md) | Tabela | [MG] Setor |
| [TMGEQUIPAMENTO](TMGEQUIPAMENTO.md) | Tabela | [MG] Equipamento |

### Modelagem

```mermaid
erDiagram
    TMGSERV ||--|| TMGTIPOSERV : contains
    TMGSERV ||--|| TMGSETOR : contains
    TMGSERV ||--|| TSIUSU : contains

	TMGSERV {
		number IDSERVICO PK "Id. Serviço"
        varchar DESCRSERVICO "Descrição Serviço"
        varchar ATIVO "Ativo"
		number IDTIPOSERVICO FK "Id. Tipo Serviço"
		number IDSETOR FK "Id. Setor"
        number CODUSUINC FK "Cód. Usuário Inc."
        date DHINC "Dt./Hr.Inclusão"
        number CODUSU FK "Cód. Usuário"
        date DHALTER "Dt./Hr.Alteração"
	}
	TMGTIPOSERV {
		number IDTIPOSERVICO PK "Id. Tipo Serviço"
	}
	TMGSETOR {
		number IDSETOR PK "Id. Setor"
	}
    TSIUSU {
        number CODUSU PK "Cód. Usuário"
    }
```

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 1.0 | 09/01/2025 | Cassio Menezes | Criação do documento |
