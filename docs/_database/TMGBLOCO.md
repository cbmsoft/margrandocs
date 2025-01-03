---
id: tmgbloco
title: '[MG] Bloco'
description: Representação da estrutura de um Bloco.
authors:
    - Cassio Menezes
tags: 
- table
---
# TMGBLOCO

## Detalhamento do Objeto

O Bloco é a principal matéria-prima do setor. Em formato de cubo, é extraído da rocha por explosão x corte, a partir de uma unidade maior denominada “Prancha”. A unidade de medida é o metro cúbico, utilizado para controlar o estoque. A partir de um Bloco são geradas as chapas brutas.

O Marcador compra o Bloco diretamente na pedreira, anotando as medidas (bruta e líquida) do material, valor unitário de compra, valor do frete, classificação e observações. Cada bloco tem um número de pedreira próprio.

| Evento | Valor |
|--|--|
| **Nome tabela** | TMGBLOCO |
| **Descrição** | [MG] Bloco |
| **Nome instância** | MgBloco |
| **Descrição instância** | Bloco |

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TGFPRO | Tabela | Produto |
| [TMGCLASSEMAT](TMGCLASSEMAT.md) | Tabela | [MG] Classe de Material |
| [TMGDUREZA](TMGDUREZA.md) | Tabela | [MG] Classificação de Dureza |
| [TMGMARCACAO](TMGMARCACAO.md) | Tabela | [MG] Marcacao |
| [TMGPRODUTO](TMGPRODUTO.md) | Tabela | [MG] Produto |

### Modelagem

```mermaid
erDiagram
    TMGMARCACAO ||--|{ TMGBLOCO : contains
    TMGBLOCO ||--|| TMGPRODUTO : contains
    TMGPRODUTO ||--|| TGFPRO : contains
    TMGPRODUTO ||--o{ TMGDUREZA : contains
    TMGPRODUTO ||--o{ TMGCLASSEMAT : contains

    TMGMARCACAO {
        number NUMARCACAO PK "Nro. Marcação"
    }
    TMGBLOCO {
        number NUMARCACAO PK "Nro. Marcação"
        number SEQUENCIA PK "Sequência"
        number CODPROD FK "Cód. Produto"
        varchar CODBLOCO "Cód. Bloco (Pedreira)"
        number COMPRIMENTO "Comprimento"
        number ALTURA "Altura"
        number LARGURA "Largura"
        number M3 "M3"
        number COMPRIMENTO_LIQ "Comprimento Liq."
        number ALTURA_LIQ "Altura Liq."
        number LARGURA_LIQ "Largura Liq."
        number M3_LIQ "M3 Liq."
        number VLRUNIT "Vlr. Unitário"
        varchar OBSERVACAO "Observação"
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
```

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 1.2 | 03/01/2025 | Cassio Menezes | Nova estrutura |
| 1.0 | 26/11/2024 | Cassio Menezes | Criação do documento |
