---
id: databasedoc
title: Database Documentation
description: Database objects documentation.
authors:
    - Cassio Menezes
tags: 
- database
---
# Database Documentation

## Tables

| Tables |
|--|
| [TMGBLOCO](TMGBLOCO.md) |
| [TMGBLOCOXITEM](TMGBLOCOXITEM.md) |
| [TMGCLASSEMAT](TMGCLASSEMAT.md) |
| [TMGDUREZA](TMGDUREZA.md) |
| [TMGEMP](TMGEMP.md) |
| [TMGFICHA](TMGFICHA.md) |
| [TMGFICHAXBLOCO](TMGFICHAXBLOCO.md) |
| [TMGMARCACAO](TMGMARCACAO.md) |
| [TMGMARCACAOXPEDIDO](TMGMARCACAOXPEDIDO.md) |
| [TMGPRODUTO](TMGPRODUTO.md) |
| [TMGTOP](TMGTOP.md) |

### Modelagem

```mermaid
erDiagram
    TGFVEN ||--|| TMGMARCACAO : contains
    TGFPAR ||--|| TMGMARCACAO : contains
    TGFTPV ||--|| TMGMARCACAO : contains
    TMGMARCACAO ||--|| TSIEMP : contains
    TSIEMP ||--|| TMGEMP : exists
    TMGMARCACAO ||--|{ TMGBLOCO : contains
    TMGBLOCO ||--|| TMGPRODUTO : contains
    TMGPRODUTO ||--|| TGFPRO : contains
    TMGPRODUTO ||--o{ TMGDUREZA : contains
    TMGPRODUTO ||--o{ TMGCLASSEMAT : contains
    TMGMARCACAO o|--|o TMGMARCACAOXPEDIDO : places
    TMGMARCACAOXPEDIDO ||--|| TGFCAB : contains
    TGFCAB ||--|{ TGFITE : contains
    TMGMARCACAOXPEDIDO ||--|{ TMGBLOCOXITEM : contains
    TMGBLOCOXITEM ||--|| TGFITE : contains
    TMGBLOCO ||--|| TMGBLOCOXITEM : contains


    TGFVEN {
        number CODVEND PK "Código"
    }
    TGFPAR {
        number CODPARC PK "Cód. Parceiro"
    }
    TGFTPV {
        number CODTIPVENDA PK "Tipo de Negociação"
    }
    TMGMARCACAO {
        number NUMARCACAO PK "Nro. Marcação"
        number CODEMP FK "Cód. Empresa"
        number CODVEND FK "Marcador"
        number CODPARC FK "Cód. Parceiro"
        number CODTIPVENDA FK "Tipo Negociação"
    }
    TMGBLOCO {
        number NUMARCACAO PK "Nro. Marcação"
        number SEQUENCIA PK "Sequência"
        number CODPROD FK "Cód. Produto"
    }
    TMGPRODUTO {
        number CODPROD PK,FK "Cód. Produto"
        number IDDUREZA FK "Classificação de Dureza"
        number CODCLASSMAT FK "Classe do Material"
    }
    TGFPRO {
        number CODPROD PK "Cód. Produto"
    }
    TMGDUREZA {
        number ID PK "Id."
    }
    TMGCLASSEMAT {
        number ID PK "Id."
    }
    TMGMARCACAOXPEDIDO {
        number NUMARCACAO PK,FK "Nro. Marcação"
        number NUNOTA PK,FK "Nro. Único"
    }
    TMGBLOCOXITEM {
        number NUMARCACAO PK,FK "Nro. Marcação"
        number NUNOTA PK,FK "Nro. Único"
        number SEQUENCIA PK,FK "Seq.Item"
        number SEQMARCACAO PK,FK "Seq.Marcação"
    }
    TGFCAB {
        number NUNOTA PK "Nro. Único"
    }
    TGFITE {
        number NUNOTA PK "Nro. Único"
        number SEQUENCIA PK "Sequência"
    }
    TSIEMP {
        number CODEMP PK "Cód. Empresa"
    }
    TMGEMP {
        number CODEMP PK "Cód. Empresa"
    }
```

```mermaid
erDiagram
    TMGFICHA ||--|| TSIEMP : contains
    TMGFICHA ||--|| TMGFICHAXBLOCO : contains
    TMGFICHAXBLOCO ||--|| TMGBLOCO : contains
    TMGBLOCO ||--|| TMGPRODUTO : contains
    TMGPRODUTO ||--|| TGFPRO : contains

    TSIEMP ||--|| TMGEMP : exists
```
