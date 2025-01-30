---
id: tmgfichatec
title: '[MG] Ficha Técnica'
description: Ficha técnica para serrada de bloco.
authors:
    - Cassio Menezes
tags: 
- database
---
# TMGFICHATEC

A **Ficha Técnica** é uma das configurações mais importantes e essenciais no sistema. É um cadastro que conduzirá a produção. 

A **Ficha Técnica** é de dois tipos: "Serrada" e "Beneficiamento".

Filtra as Durezas permitidas para o processo e também os Equipamentos que podem ser utilizados.

## Detalhamento do Objeto

A *Ficha Técnica* .

| Evento | Valor |
|--|--|
| **Nome tabela** | TMGFICHATEC |
| **Descrição** | [MG] Ficha Técnica |
| **Nome instância** | MgFichaTecnica |
| **Descrição instância** | Ficha Técnica |
| **Lançador** |
| Descrição do Controle | [MG] Ficha Técnica |
| Identificador | br.com.sankhya.pwn.margran.FichaTecnica |
| Evento | ${dynaform:MgFichaTecnica} |
| contexto | pwnmargran |
| entityName | MgFichaTecnica |
| resourceID | br.com.pwn.margran.fichatecnica |

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TSIUSU | Tabela | Usuario |
| [TMGDUREZA](TMGDUREZA.md) | Tabela | [MG] Classificação de Dureza |
| [TMGEQUIPAMENTO](TMGEQUIPAMENTO.md) | Tabela | [MG] Equipamento |
| [TMGFICHATECXCIP](TMGFICHATECXCIP.md) | Tabela | [MG] Ficha Técnica x Tarifas CIP |
| [TMGFICHATECXDUR](TMGFICHATECXDUR.md) | Tabela | [MG] Ficha Técnica x Dureza |
| [TMGFICHATECXDURXCIP](TMGFICHATECXDURXCIP.md) | Tabela | [MG] Ficha Técnica x Dureza x Tarifa |
| [TMGFICHATECXDURXMP](TMGFICHATECXDURXMP.md) | Tabela | [MG] Ficha Técnica x Dureza x Insumo |
| [TMGFICHATECXEQP](TMGFICHATECXEQP.md) | Tabela | [MG] Ficha Técnica x Equipamento |

### Modelagem

```mermaid
erDiagram
    TSIUSU ||--|| TMGFICHATEC : contains
    
    TMGFICHATEC ||..o{ TMGFICHATECXMP : uses
    TMGFICHATEC ||..o{ TMGFICHATECXCIP : uses
    TMGFICHATEC ||..o| TMGFICHATECXEQP : uses
    TMGFICHATECXEQP ||..o{ TMGFICHATECXEQPXMP : uses
    TMGFICHATECXEQP ||..o{ TMGFICHATECXEQPXCIP : uses
    TMGFICHATECXEQP ||..o{ TMGEQUIPAMENTO : contains
    TMGFICHATEC ||..o{ TMGFICHATECXDUR : contains
    TMGFICHATECXDUR ||..o{ TMGFICHATECXDURXMP : uses
    TMGFICHATECXDUR ||..o{ TMGFICHATECXDURXCIP : uses
    TMGFICHATEC ||--|| TIPO : enum
    
    TSIUSU {
        number CODUSU PK "Cód. Usuário"
    }
    TMGFICHATEC {
        number IDFICHATEC PK "Id. Ficha Técnica"
        varchar DESCRFICHATEC "Descrição Ficha Técnica"
        varchar ATIVO "Ativo"
        varchar TIPO "Tipo"
        number CODUSUINC FK "Cód. Usuário Inc."
        date DHINC "Dt./Hr.Inclusão"
        number CODUSU FK "Cód. Usuário"
        date DHALTER "Dt./Hr.Alteração"
    }
    TMGFICHATECXMP {
        number IDFICHATEC PK "Id. Ficha Técnica"
        number CODPRODMP PK,FK "Insumo"
    }
    TMGFICHATECXCIP {
        number IDFICHATEC PK "Id. Ficha Técnica"
        number CODPRODTAR PK,FK "Tarifa"
    }
    TMGFICHATECXEQP {
        number IDFICHATEC PK "Id. Ficha Técnica"
        number IDEQUIPAMENTO PK,FK "Id. Equipamento"
    }
    TMGEQUIPAMENTO {
        number IDEQUIPAMENTO PK "Id. Equipamento"
    }
    TMGFICHATECXEQPXMP {
        number IDFICHATEC PK "Id. Ficha Técnica"
        number IDEQUIPAMENTO PK,FK "Id. Equipamento"
        number CODPRODMP PK,FK "Insumo"
    }
    TMGFICHATECXEQPXCIP {
        number IDFICHATEC PK "Id. Ficha Técnica"
        number IDEQUIPAMENTO PK,FK "Id. Equipamento"
        number CODPRODTAR PK,FK "Tarifa"
    }
    TMGFICHATECXDUR {
        number IDFICHATEC PK "Id. Ficha Técnica"
        number IDDUREZA PK,FK "Classificação de Dureza"
    }
    TMGFICHATECXDURXMP {
        number IDFICHATEC PK "Id. Ficha Técnica"
        number IDDUREZA PK,FK "Classificação de Dureza"
        number CODPRODMP PK,FK "Insumo"
    }
    TMGFICHATECXDURXCIP {
        number IDFICHATEC PK "Id. Ficha Técnica"
        number IDDUREZA PK,FK "Classificação de Dureza"
        number CODPRODTAR PK,FK "Tarifa"
    }
    TIPO {
        varchar S "Serrada"
        varchar B "Beneficiamento"
    }
```

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 2.0 | 23/01/2025 | Cassio Menezes | Atualização da estrutura para insumos e tarifas |
| 1.0 | 09/01/2025 | Cassio Menezes | Criação do documento |
