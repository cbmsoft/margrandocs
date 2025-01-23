---
id: tmgserdxchapa
title: '[MG] Serrada de Bloco X Chapa'
description: Serrada de Bloco X Chapa
authors:
    - Cassio Menezes
tags: 
- table
---
# TMGSERDXCHAPA

## Detalhamento do Objeto

Serrada refere-se ao ato de serrar, ou seja, o processo de corte do bloco em chapas utilizando serras específicas, como teares multilâminas ou multifios. É o termo que descreve a ação em si e o resultado desse processo: as chapas serradas.

O processo de serrada é crucial na produção de chapas de rochas ornamentais. A qualidade da serrada influencia diretamente na qualidade final do produto, como o acabamento e a espessura das chapas. Diversos parâmetros influenciam na serrada, como o tipo de serra, a velocidade de corte, o tipo de abrasivo utilizado e as características da rocha.

| Evento | Valor |
|--|--|
| **Nome tabela** | TMGSERDXCHAPA |
| **Descrição** | [MG] Serrada de Bloco X Chapa |
| **Nome instância** | MgSerradaXChapa |
| **Descrição instância** | Serrada de Bloco X Chapa |

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
    TMGSERD ||--|| TMGSERDXCHAPA : contains
    TMGSERDXCHAPA ||--|| TGFLOC : contains
    TMGSERDXCHAPA ||--|| TSIEMP : contains
    TMGSERDXCHAPA ||--|| TSIUSU : contains
    TMGSERDXCHAPA ||--|| STATUS : enum
    
    TSIEMP ||--|| TMGEMP : exists

    TMGSERD {
        number NUSERD PK "Nro. Serrada"
    }
    TMGSERDXCHAPA {
        number NUSERD PK "Nro. Serrada"
        number CODEMP PK,FK "Cód. Empresa"
        number IDBLOCO PK,FK "Id. Bloco"
        number CODPRODPA PK,FK "Chapa"
        number COMPRIMENTO "Comprimento"
        number ALTURA "Altura"
        number ESPESSURA "Espessura"
        number CODLOCAL FK "Cód. Local"
        number CODUSUINC FK "Cód. Usuário Inc."
        date DHINC "Dt./Hr.Inclusão"
        number CODUSU FK "Cód. Usuário"
        date DHALTER "Dt./Hr.Alteração"
    }
    TGFLOC {
        number CODLOCAL PK "Cód. Local"
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
