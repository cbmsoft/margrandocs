---
id: tmgserd
title: '[MG] Serrada de Bloco'
description: Serrada de Bloco
authors:
    - Cassio Menezes
tags: 
- table
---
# TMGSERD

## Detalhamento do Objeto

Serrada refere-se ao ato de serrar, ou seja, o processo de corte do bloco em chapas utilizando serras específicas, como teares multilâminas ou multifios. É o termo que descreve a ação em si e o resultado desse processo: as chapas serradas.

O processo de serrada é crucial na produção de chapas de rochas ornamentais. A qualidade da serrada influencia diretamente na qualidade final do produto, como o acabamento e a espessura das chapas. Diversos parâmetros influenciam na serrada, como o tipo de serra, a velocidade de corte, o tipo de abrasivo utilizado e as características da rocha.

| Evento | Valor |
|--|--|
| **Nome tabela** | TMGSERD |
| **Descrição** | [MG] Serrada de Bloco |
| **Nome instância** | MgSerrada |
| **Descrição instância** | Serrada de Bloco |
| **Lançador** |
| Descrição do Controle | [MG] Serrada de Bloco |
| Identificador | br.com.sankhya.pwn.margran.Serrada |
| Evento | ${dynaform:MgSerrada} |
| contexto | pwnmargran |
| entityName | MgSerrada |
| resourceID | br.com.pwn.margran.serrada |

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TSIEMP | Tabela | Empresa |
| TSIUSU | Tabela | Usuario |
| [TMGEMP](TMGEMP.md) | Tabela | [MG] Preferencias por Empresa |
| [TMGFICHATEC](TMGFICHATEC.md) | Tabela | [MG] Ficha Técnica |

### Modelagem

```mermaid
erDiagram
    TMGSERD ||--|| TSIEMP : contains
    TMGSERD ||--|| TMGFICHATEC : contains
    TMGFICHATEC ||--|| TMGSERV : contains
    TMGSERD ||--|| TSIUSU : contains
    TMGSERD ||--|| STATUS : enum
    
    TSIEMP ||--|| TMGEMP : exists

    TMGSERD {
        number NUSERD PK "Nro. Serrada"
        number CODEMP FK "Cód. Empresa"
        date DTOPER "Dt. Operação"
        varchar STATUS "Status"
        number IDFICHATEC FK "Id. Ficha Técnica"
        number CODUSUINC FK "Cód. Usuário Inc."
        date DHINC "Dt./Hr.Inclusão"
        number CODUSU FK "Cód. Usuário"
        date DHALTER "Dt./Hr.Alteração"
    }
    TMGFICHATEC {
        number IDFICHATEC PK "Id. Ficha Técnica"
		number IDSERVICO FK "Id. Serviço"
    }
	TMGSERV {
		number IDSERVICO PK "Id. Serviço"
	}
    TSIUSU {
        number CODUSU PK "Cód. Usuário"
    }
    STATUS {
        varchar _0 "Aguardando Serragem"
        varchar _1 "Serrando"
        varchar _2 "Serragem Finalizada"
        varchar _3 "Polida"
	}
    TSIEMP {
        number CODEMP PK "Cód. Empresa"
    }
    TMGEMP {
        number CODEMP PK "Cód. Empresa"
    }
```

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 1.0 | 08/01/2025 | Cassio Menezes | Criação do documento |
