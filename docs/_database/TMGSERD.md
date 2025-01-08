---
id: tmgserd
title: '[MG] Serrada'
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
| **Descrição** | [MG] Serrada |
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
| [TMGEMP](TMGEMP.md) | Tabela | [MG] Preferencias por Empresa |

### Modelagem

```mermaid
erDiagram
    TMGSERD ||--|| TSIEMP : contains
    TMGSERD ||--|| STATUS : enum
    TMGSERD ||--|| TIPO : enum
    
    TSIEMP ||--|| TMGEMP : exists

    TMGSERD {
        number NUSERD PK "Nro. Serrada"
        number CODEMP FK "Cód. Empresa"
        date DTOPER "Dt. Operação"
        varchar STATUS "Status"
        varchar TIPO "Tipo"
        number CODUSUINC "Cód. Usuário Inc."
        date DHINC "Dt./Hr.Inclusão"
        number CODUSU "Cód. Usuário"
        date DHALTER "Dt./Hr.Alteração"
    }
    STATUS {
        varchar _0 "Aguardando Serragem"
        varchar _1 "Serrando"
        varchar _2 "Serragem Finalizada"
        varchar _3 "Polida"
	}
    TIPO {
        varchar S "Serrada"
        varchar P "Polimento"
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
