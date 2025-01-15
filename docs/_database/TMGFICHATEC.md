---
id: tmgfichatec
title: '[MG] Ficha Técnica'
description: Ficha técnica para serrada de bloco.
authors:
    - Cassio Menezes
tags: 
- database
---
# TMGFICHATEC

## Detalhamento do Objeto

Serrada refere-se ao ato de serrar, ou seja, o processo de corte do bloco em chapas utilizando serras específicas, como teares multilâminas ou multifios. É o termo que descreve a ação em si e o resultado desse processo: as chapas serradas.

O processo de serrada é crucial na produção de chapas de rochas ornamentais. A qualidade da serrada influencia diretamente na qualidade final do produto, como o acabamento e a espessura das chapas. Diversos parâmetros influenciam na serrada, como o tipo de serra, a velocidade de corte, o tipo de abrasivo utilizado e as características da rocha.

| Evento | Valor |
|--|--|
| **Nome tabela** | TMGFICHATEC |
| **Descrição** | [MG] Ficha Técnica |
| **Nome instância** | MgFichaTecnica |
| **Descrição instância** | Ficha Técnica |
| **Lançador** |
| Descrição do Controle | [MG] Ficha Técnica |
| Identificador | br.com.sankhya.pwn.margran.FichaTecnica |
| Evento | ${dynaform:MgFichaTecnica} |
| contexto | pwnmargran |
| entityName | MgFichaTecnica |
| resourceID | br.com.pwn.margran.fichatecnica |

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TSIUSU | Tabela | Usuario |
| [TMGSERV](TMGSERV.md) | Tabela | [MG] Serviço |

### Modelagem

```mermaid
erDiagram
    TMGFICHATEC ||--|| TMGSERV : contains
    TMGFICHATEC ||--|| TMGEQUIPAMENTO : contains
    TMGFICHATEC ||--|| TSIUSU : contains

	TMGFICHATEC {
		number IDFICHATEC PK "Id. Ficha Técnica"
        varchar DESCRFICHATEC "Descrição Ficha Técnica"
        varchar ATIVO "Ativo"
        number IDSERVICO FK "Id. Serviço"
        number IDEQUIPAMENTO PK "Id. Equipamento"
        varchar ALTERAESTADO "Altera Estado (Bruto p/ Beneficiado)"
        varchar ALTERAPRODUTO "Altera Produto"
        varchar ALTERAPRONTO "Altera p/ pronto?"
        number CODUSUINC FK "Cód. Usuário Inc."
        date DHINC "Dt./Hr.Inclusão"
        number CODUSU FK "Cód. Usuário"
        date DHALTER "Dt./Hr.Alteração"
	}
	TMGSERV {
		number IDSERVICO PK "Id. Serviço"
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
| 1.0 | 09/01/2025 | Cassio Menezes | Criação do documento |
