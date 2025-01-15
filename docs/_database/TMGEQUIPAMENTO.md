---
id: tmgequipamento
title: '[MG] Equipamento'
description: Equipamento
authors:
    - Cassio Menezes
tags: 
- database
---
# TMGEQUIPAMENTO

## Detalhamento do Objeto

Tipos de Serviços a serem utilizados na transformação de blocos e chapas.

| Evento | Valor |
|--|--|
| **Nome tabela** | TMGEQUIPAMENTO |
| **Descrição** | [MG] Equipamento |
| **Nome instância** | MgEquipamento |
| **Descrição instância** | Equipamento |
| **Lançador** |
| Descrição do Controle | [MG] Equipamento |
| Identificador | br.com.sankhya.pwn.margran.Equipamento |
| Evento | ${dynaform:MgEquipamento} |
| contexto | pwnmargran |
| entityName | MgEquipamento |
| resourceID | br.com.pwn.margran.equipamento |

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TSIUSU | Tabela | Usuario |
| [TMGSERV](TMGSERV.md) | Tabela | [MG] Serviço |

### Modelagem

```mermaid
erDiagram
    TMGSERV ||--|| TMGEQUIPAMENTO : contains
    TMGEQUIPAMENTO ||--|| TSIUSU : contains
    TMGEQUIPAMENTO ||--|| TGFPRO : contains
    TMGEQUIPAMENTO ||--|| TIPOEQUIP : enum

	TMGSERV {
		number IDEQUIPAMENTO PK "Id. Equipamento"
 	}
	TMGEQUIPAMENTO {
		number IDEQUIPAMENTO PK "Id. Equipamento"
        varchar DESCREQUIP "Descrição"
        varchar ATIVO "Ativo"
        varchar TIPOEQUIP "Tipo"
        varchar DESCREQUIPPOP "Descrição Popular (Pátio)"
        number CODPROD FK "Cód. Fio"
        number ESPESSURAFIO "Espessura Fio"
        number COMPRIMENTO "Comprimento"
        number ALTURA "Altura"
        number LARGURA "Largura"
        varchar NOMEFABRICANTE "Nome do Fabricante"
        number KWHRFIO "KW/Hr Fio"
        number KWHRFIXO "KW/Hr Fixo"
        number AMPERMOTOR "Amperagem do Motor"
        varchar PATHORIGFOTO "Caminho de Origem da Foto"
        varchar PATHDESTFOTO "Caminho de Destino da Foto"
        number CODUSUINC FK "Cód. Usuário Inc."
        date DHINC "Dt./Hr.Inclusão"
        number CODUSU FK "Cód. Usuário"
        date DHALTER "Dt./Hr.Alteração"
	}
    TSIUSU {
        number CODUSU PK "Cód. Usuário"
    }
    TGFPRO {
        number CODPROD PK "Código"
    }
    TIPOEQUIP {
        varchar T "Tear"
        varchar P "Politriz"
        varchar R "Resina"
        varchar M "Tratamento"
        varchar O "Outros"
    }
```

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 1.0 | 15/01/2025 | Cassio Menezes | Criação do documento |
