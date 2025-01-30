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
| **Descrição instância** | Blocos |

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TGFPRO | Tabela | Produto |
| TSIEMP | Tabela | Empresa |
| TSIUSU | Tabela | Usuario |
| [TMGEMP](TMGEMP.md) | Tabela | [MG] Preferencias por Empresa |
| [TMGFICHATEC](TMGFICHATEC.md) | Tabela | [MG] Ficha Técnica |
| [TMGPRODUTO](TMGPRODUTO.md) | Tabela | [MG] Produto |

### Modelagem

```mermaid
erDiagram
    TMGSERD ||--|| TMGSERDXBLOCO : contains
    TMGSERDXBLOCO ||--|| TSIEMP : contains
    TMGSERDXBLOCO ||--|| TMGFICHA : contains
    TMGSERDXBLOCO ||--|| TGFPRO : contains
    TGFPRO ||--|| TMGPRODUTO : exists
    TMGSERDXBLOCO ||--|| TSIUSU : contains
    TMGSERDXBLOCO ||--|| STATUS : enum
    
    TSIEMP ||--|| TMGEMP : exists

    TMGSERD {
        number NUSERD PK "Nro. Serrada"
    }
    TMGSERDXBLOCO {
        number NUSERD PK "Nro. Serrada"
        number SEQUENCIA PK "Sequência"
        number CODEMP FK "Cód. Empresa"
        number IDBLOCO FK "Id. Bloco"
        number CODPRODPA FK "Chapa"
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
    TGFPRO {
        number CODPROD PK "Cód. Produto"
    }
    TMGPRODUTO {
        number CODPROD PK "Cód. Produto"
    }
    TSIEMP {
        number CODEMP PK "Cód. Empresa"
    }
    TMGEMP {
        number CODEMP PK "Cód. Empresa"
    }
    TSIUSU {
        number CODUSU PK "Cód. Usuário"
    }
```

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 1.0 | 22/01/2025 | Cassio Menezes | Criação do documento |
