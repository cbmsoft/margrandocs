---
id: tmgemp
title: '[MG] Preferencias por Empresa'
description: Representacao da negociacao de compra de Blocos.
authors:
    - Cassio Menezes
tags: 
- database
- table
---
# TMGEMP

**Nome tabela**: TMGEMP  
**Descrição**: [MG] Preferencias por Empresa  
**Nome instância**: MgEmpresa

## Detalhamento do Objeto

Preferências por empresa

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TSIEMP | Tabela | Empresa |

### Modelagem

```mermaid
erDiagram
    TMGEMP ||--|| TSIEMP : contains

    TMGEMP {
        number CODEMP PK, FK "Cód. Empresa"
        varchar ATIVO "Ativo"
        number NUMODPEDIDOMARCACAO FK "Modelo Pedido Compra Marcação"
    }
    TSIEMP {
        number CODEMP PK "Cód. Empresa"
    }
```

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 1.0 | 05/12/2024 | Cassio Menezes | Criação do documento |
