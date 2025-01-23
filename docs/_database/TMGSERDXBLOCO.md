---
id: tmgserdxbloco
title: '[MG] Serrada de Bloco X Bloco'
description: Serrada de Bloco X Bloco
authors:
    - Cassio Menezes
tags: 
- table
---
# TMGSERDXBLOCO

## Detalhamento do Objeto

Serrada refere-se ao ato de serrar, ou seja, o processo de corte do bloco em chapas utilizando serras específicas, como teares multilâminas ou multifios. É o termo que descreve a ação em si e o resultado desse processo: as chapas serradas.

O processo de serrada é crucial na produção de chapas de rochas ornamentais. A qualidade da serrada influencia diretamente na qualidade final do produto, como o acabamento e a espessura das chapas. Diversos parâmetros influenciam na serrada, como o tipo de serra, a velocidade de corte, o tipo de abrasivo utilizado e as características da rocha.

| Evento | Valor |
|--|--|
| **Nome tabela** | TMGSERDXBLOCO |
| **Descrição** | [MG] Serrada de Bloco X Bloco |
| **Nome instância** | MgSerradaXBloco |
| **Descrição instância** | Serrada de Bloco X Bloco |

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
    TMGSERD ||--|| TMGSERDXBLOCO : contains
    TMGSERDXBLOCO ||--|| TSIEMP : contains
    TMGSERDXBLOCO ||--|| TMGFICHA : contains
    TMGSERDXBLOCO ||--|| TSIUSU : contains
    TMGSERDXBLOCO ||--|| STATUS : enum
    
    TSIEMP ||--|| TMGEMP : exists

    TMGSERD {
        number NUSERD PK "Nro. Serrada"
    }
    TMGSERDXBLOCO {
        number NUSERD PK "Nro. Serrada"
        number CODEMP PK,FK "Cód. Empresa"
        number IDBLOCO PK,FK "Id. Bloco"
        number CODPRODPA PK,FK "Chapa"
        number QTD "Qtd. Chapas"
        number ESPESSLAMFIO "Espessura Lamina/fio (cm)"
        number CODUSUINC FK "Cód. Usuário Inc."
        date DHINC "Dt./Hr.Inclusão"
        number CODUSU FK "Cód. Usuário"
        date DHALTER "Dt./Hr.Alteração"
    }
    TMGFICHA {
        number CODEMP PK "Cód. Empresa"
        number IDBLOCO PK "Id. Bloco"
    }
    TSIUSU {
        number CODUSU PK "Cód. Usuário"
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
| 1.0 | 22/01/2025 | Cassio Menezes | Criação do documento |
