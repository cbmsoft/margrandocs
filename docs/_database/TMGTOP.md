---
id: tmgtop
title: '[MG] Tipos de Operacao - TOP'
description: Informacoes complementares para a TOP
authors:
    - Cassio Menezes
tags: 
- database
- table
---
# TMGTOP

**Nome tabela**: TMGTOP  
**Descrição**: [MG] Tipos de Operacao - TOP  
**Nome instância**: MgTipoOperacao

## Detalhamento do Objeto

Preferências por empresa

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TGFTOP | Tabela | TipoOperacao |

### Modelagem

```mermaid
erDiagram
    TMGTOP ||--|| TGFTOP : contains

    TMGTOP {
        number CODTIPOPER PK, FK "Cód.Tipo Operação"
        varchar ATIVO "Ativo"
        varchar GERAFICHA "Gera Ficha"
    }
    TGFTOP {
        number CODTIPOPER PK "Cód.Tipo Operação"
    }
```

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 1.0 | 03/01/2024 | Cassio Menezes | Criação do documento |
