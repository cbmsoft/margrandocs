---
id: tmgtiposerv
title: '[MG] Tipo de Serviço'
description: Tipo de Serviço.
authors:
    - Cassio Menezes
tags: 
- database
---
# TMGTIPOSERV

## Detalhamento do Objeto

Tipos de Serviços a serem utilizados na transformação de blocos e chapas.

| Evento | Valor |
|--|--|
| **Nome tabela** | TMGTIPOSERV |
| **Descrição** | [MG] Tipo de Serviço |
| **Nome instância** | MgTipoServico |
| **Descrição instância** | Tipo de Serviço |
| **Lançador** |
| Descrição do Controle | [MG] Tipo de Serviço |
| Identificador | br.com.sankhya.pwn.margran.TipoServico |
| Evento | ${dynaform:MgTipoServico} |
| contexto | pwnmargran |
| entityName | MgTipoServico |
| resourceID | br.com.pwn.margran.tiposervico |

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TSIUSU | Tabela | Usuario |
| [TMGSERV](TMGSERV.md) | Tabela | [MG] Serviço |

### Modelagem

```mermaid
erDiagram
    TMGSERV ||--|| TMGTIPOSERV : contains
    TMGTIPOSERV ||--|| TSIUSU : contains

	TMGSERV {
		number IDSERVICO PK "Id. Serviço"
 	}
	TMGTIPOSERV {
		number IDTIPOSERVICO FK "Id. Tipo Serviço"
        varchar DESCRTIPOSERVICO "Descrição Tipo Serviço"
        varchar ATIVO "Ativo"
        number CODUSUINC "Cód. Usuário Inc."
        date DHINC "Dt./Hr.Inclusão"
        number CODUSU "Cód. Usuário"
        date DHALTER "Dt./Hr.Alteração"
	}
    TSIUSU {
        number CODUSU PK "Cód. Usuário"
    }
```

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 1.0 | 14/01/2025 | Cassio Menezes | Criação do documento |
