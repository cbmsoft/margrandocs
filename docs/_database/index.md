---
id: database
title: Database
description: Database objects documentation.
authors:
    - Cassio Menezes
tags: 
- database
---
# Database Documentation

## Tables

|  |
|--|
| [TMGBLOCO](TMGBLOCO.md) |
| [TMGCLASSEMAT](TMGCLASSEMAT.md) |
| [TMGDUREZA](TMGDUREZA.md) |
| [TMGEMP](TMGEMP.md) |
| [TMGMARCACAO](TMGMARCACAO.md) |
| [TMGPRODUTO](TMGPRODUTO.md) |

### Modelagem

```mermaid
erDiagram
    TMGMARCACAO ||--|{ TMGBLOCO : contains
    TMGBLOCO ||--|| TMGPRODUTO : contains
    TMGBLOCO ||--|| TMGCLASSEMAT : contains
    TMGBLOCO ||--|| TMGDUREZA : contains
    TMGMARCACAO |o--o| TGFCAB : places
    TGFCAB ||--|{ TGFITE : contains
    TMGBLOCO ||--o| TMGBLOCOXITEM : contains
    TMGBLOCOXITEM |o--o| TGFITE : contains
```
