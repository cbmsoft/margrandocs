---
id: tmgprodutovinc
title: '[MG] Produto Vinculado'
description: Produtos vinculados.
authors:
    - Cassio Menezes
tags: 
- table
---
# TMGPRODUTOVINC

## Detalhamento do Objeto

Campos complementares do cadastro de produtos, necessários aos procedimentos do módulo Mármore e Granito.

| Evento | Valor |
|--|--|
| **Nome tabela** | TMGPRODUTOVINC |
| **Descrição** | [MG] Produto Vinculado |
| **Nome instância** | MgProdutoVinc |
| **Descrição instância** | Produtos vinculados |

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TGFPRO | Tabela | Produto |
| [TMGPRODUTO](TMGPRODUTO.md) | Tabela | [MG] Produto |
| [TMGESPESSURACHAPA](TMGESPESSURACHAPA.md) | Tabela | [MG] Espessura de Chapa |

### Modelagem

```mermaid
erDiagram
    TMGPRODUTO ||--o{ TMGPRODUTOVINC : contains
    TMGPRODUTOVINC ||--|| TGFPRO : contains
    TMGPRODUTOVINC ||--|| TMGESPESSURACHAPA : contains

    TMGPRODUTO {
        number CODPROD PK,FK "Cód. Produto"
    }
    TMGPRODUTOVINC {
        number CODPROD PK,FK "Cód. Produto"
        number ESPESSURA PK "Espessura" 
        number CODPRODVINC PK,FK "Cód. Produto Vinculado"
        number CODUSUINC FK "Cód. Usuário Inc."
        date DHINC "Dt./Hr.Inclusão"
        number CODUSU FK "Cód. Usuário"
        date DHALTER "Dt./Hr.Alteração"
    }
    TGFPRO {
        number CODPROD PK "Código"
    }
    TMGESPESSURACHAPA {
        number ESPESSURA PK "Id."
    }
```
### Campos Calculados

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 1.0 | 30/01/2025 | Cassio Menezes | Criação do documento |
