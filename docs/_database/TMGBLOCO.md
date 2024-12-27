---
id: tmgbloco
title: '[MG] Bloco'
description: Representação da estrutura de um Bloco.
authors:
    - Cassio Menezes
tags: 
- database
- table
---
# TMGBLOCO

## Detalhamento do Objeto

O Bloco é a principal matéria-prima do setor. Em formato de cubo, é extraído da rocha por explosão x corte, a partir de uma unidade maior denominada “Prancha”. A unidade de medida é o metro cúbico, utilizado para controlar o estoque. A partir de um Bloco são geradas as chapas brutas.

O Marcador compra o Bloco diretamente na pedreira, anotando as medidas (bruta e líquida) do material, valor unitário de compra, valor do frete, classificação e observações. Cada bloco tem um número de pedreira próprio.

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| [TMGPRODUTO](TMGPRODUTO.md) | Tabela | [MG] Produto |

### Modelagem

```mermaid
erDiagram
    TMGMARCACAO ||--|{ TMGBLOCO : contains
    TMGBLOCO ||--|| TGFPRO : contains
    TGFPRO ||--|| TMGPRODUTO : exists

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
    }
    TGFPRO {
        number CODPROD PK "Cód. Produto"
    }
```

```mermaid
classDiagram
    class MgClasseMat{
      -BigDecimal id
      -String descricao
      +loadByPk(Object... keyValue)
      +loadByVO(DynamicVO vo)
      +persists() DynamicVO
    }
```
![alt text](image.png)

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 1.0 | 26/11/2025 | Cassio Menezes | Criação do documento |
