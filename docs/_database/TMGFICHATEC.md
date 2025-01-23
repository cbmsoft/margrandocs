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
| [TMGEQUIPAMENTO](TMGEQUIPAMENTO.md) | Tabela | [MG] Equipamento |
| [TMGFICHATECXCIP](TMGFICHATECXCIP.md) | Tabela | [MG] Ficha Técnica x Tarifas CIP |
| [TMGFICHATECXDUR](TMGFICHATECXDUR.md) | Tabela | [MG] Ficha Técnica x Dureza |
| [TMGSERV](TMGSERV.md) | Tabela | [MG] Serviço |

### Modelagem

```mermaid
erDiagram
    TSIUSU ||--|| TMGFICHATEC : contains
    
    TMGFICHATEC ||..o{ TMGFICHATECXMP : uses
    TMGFICHATEC ||..o{ TMGFICHATECXCIP : uses
    TMGFICHATEC ||--|| TMGSERV : contains
    TMGFICHATEC ||..o| TMGFICHATECXEQP : uses
    TMGFICHATECXEQP ||..o{ TMGFICHATECXEQPXMP : uses
    TMGFICHATECXEQP ||..o{ TMGFICHATECXEQPXCIP : uses
    TMGFICHATECXEQP ||..o{ TMGEQUIPAMENTO : contains
    TMGFICHATEC ||..o{ TMGFICHATECXDUR : contains
    TMGFICHATECXDUR ||..o{ TMGFICHATECXDURXMP : uses
    TMGFICHATECXDUR ||..o{ TMGFICHATECXDURXCIP : uses
    
    TSIUSU {
        number CODUSU PK "Cód. Usuário"
    }
    TMGFICHATECXMP {
        number IDFICHATEC PK "Id. Ficha Técnica"
        number CODPRODMP PK,FK "Insumo"
    }
    TMGFICHATEC {
        number IDFICHATEC PK "Id. Ficha Técnica"
        varchar DESCRFICHATEC "Descrição Ficha Técnica"
        varchar ATIVO "Ativo"
        number IDSERVICO FK "Id. Serviço"
        number IDEQUIPAMENTO PK "Id. Equipamento"
        varchar ALTERAESTADO "Altera Estado (Bruto p/ Beneficiado)"
        varchar ALTERAPRODUTO "Altera Produto"
        varchar ALTERAPRONTO "Altera p/ pronto?"
        number CODUSUINC FK "Cód. Usuário Inc."
        date DHINC "Dt./Hr.Inclusão"
        number CODUSU FK "Cód. Usuário"
        date DHALTER "Dt./Hr.Alteração"
    }
    TMGSERV {
        number IDSERVICO PK "Id. Serviço"
    }
    TMGFICHATECXEQP {
        number IDFICHATEC PK "Id. Ficha Técnica"
        number IDEQUIPAMENTO PK,FK "Id. Equipamento"
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
    TMGEQUIPAMENTO {
        number IDEQUIPAMENTO PK "Id. Equipamento"
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
    TMGFICHATECXCIP {
        number IDFICHATEC PK "Id. Ficha Técnica"
        number CODPRODTAR PK,FK "Tarifa"
    }
```

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 2.0 | 23/01/2025 | Cassio Menezes | Atualização da estrutura para insumos e tarifas |
| 1.0 | 09/01/2025 | Cassio Menezes | Criação do documento |
