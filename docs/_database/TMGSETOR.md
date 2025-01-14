---
id: tmgsetor
title: '[MG] Setor'
description: Setor
authors:
    - Cassio Menezes
tags: 
- database
---
# TMGSETOR

## Detalhamento do Objeto

Tipos de Serviços a serem utilizados na transformação de blocos e chapas.

| Evento | Valor |
|--|--|
| **Nome tabela** | TMGSETOR |
| **Descrição** | [MG] Setor |
| **Nome instância** | MgSetor |
| **Descrição instância** | Setor |
| **Lançador** |
| Descrição do Controle | [MG] Setor |
| Identificador | br.com.sankhya.pwn.margran.Setor |
| Evento | ${dynaform:MgSetor} |
| contexto | pwnmargran |
| entityName | MgSetor |
| resourceID | br.com.pwn.margran.setor |

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TSIUSU | Tabela | Usuario |
| [TMGSERV](TMGSERV.md) | Tabela | [MG] Serviço |

### Modelagem

```mermaid
erDiagram
    TMGSERV ||--|| TMGSETOR : contains
    TMGSETOR ||--|| TSIUSU : contains

	TMGSERV {
		number IDSERVICO PK "Id. Serviço"
 	}
	TMGSETOR {
		number IDSETOR FK "Id. Setor"
        varchar DESCRSETOR "Descrição Tipo Serviço"
        varchar ATIVO "Ativo"
        number CODUSUINC FK "Cód. Usuário Inc."
        date DHINC "Dt./Hr.Inclusão"
        number CODUSU FK "Cód. Usuário"
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
