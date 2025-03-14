---
id: pwnmargran
title: 'Configuracoes da Extensao'
description: Extensao pwnmargran
authors:
    - Cassio Menezes
tags: 
- extension
---
# pwnmargran

## Estrutura de menus

``` mermaid
flowchart TD
    A[Mármore e Granito] --> B(["Configurações"])
    A --> C([Rotinas])
    B --> D["[MG] Classificação de Dureza"]
    B --> E["[MG] Classe de Material"]
    B --> F["[MG] Produto"]
    C --> G["[MG] Marcação"]
```

## Configurações de Telas

| Evento/Propriedade | Valor |
|--|--|
| Descrição | FrameBuilder MarGran |
| Identificador | br.com.sankhya.pwn.margran.FrameBuilderMarGran |
| Tipo de Controle | Tela |
| Tipo de Filhos | Frame Builder |
| Orienteção | Vertical |

| Evento/Propriedade | Valor |
|--|--|
| Descrição | Mármore e Granito |
| Identificador | br.com.sankhya.pwn.margran.MarmoreGranito |
| Tipo de Controle | Frame Builder |
| Tipo de Filhos | Item de Menu |
| Orienteção | Vertical |
| contexto | pwnmargran |

| Evento/Propriedade | Valor |
|--|--|
| Descrição | Configurações |
| Identificador | br.com.sankhya.pwn.margran.Configuracoes |
| Tipo de Controle | Item de Menu |
| Tipo de Filhos | Item de Menu |
| Orientação | Vertical |
| contexto | pwnmargran |

| Evento/Propriedade | Valor |
|--|--|
| Descrição | [MG] Classificação de Dureza |
| Identificador | br.com.sankhya.pwn.margran.ClassificacaoDureza |
| Tipo de Controle | Item de Menu |
| Tipo de Filhos | Item de Menu |
| Orientação | Vertical |
| Evento | ${dynaform:MgDureza} |
| contexto | pwnmargran |
| entityName | MgDureza |
| resourceID | br.com.pwn.margran.core.mgdureza |

| Evento/Propriedade | Valor |
|--|--|
| Descrição | [MG] Classe de Material |
| Identificador | br.com.sankhya.pwn.margran.ClasseMaterial |
| Tipo de Controle | Item de Menu |
| Tipo de Filhos | Item de Menu |
| Orientação | Vertical |
| Evento | ${dynaform:MgClasseMaterial} |
| contexto | pwnmargran |
| entityName | MgClasseMaterial |
| resourceID | br.com.pwn.margran.core.mgclassematerial |

| Evento/Propriedade | Valor |
|--|--|
| Descrição | [MG] Produto |
| Identificador | br.com.sankhya.pwn.margran.Produto |
| Tipo de Controle | Item de Menu |
| Tipo de Filhos | Item de Menu |
| Orientação | Vertical |
| Eventol | ${dynaform:MgProduto} |
| contexto | pwnmargran |
| entityName | MgProduto |
| resourceID | br.com.pwn.margran.core.mgproduto |

| Evento/Propriedade | Valor |
|--|--|
| Descrição | Rotinas |
| Identificador | br.com.sankhya.pwn.margran.Rotinas |
| Tipo de Controle | Item de Menu |
| Tipo de Filhos | Item de Menu |
| Orientação | Vertical |
| contexto | pwnmargran |

| Evento/Propriedade | Valor |
|--|--|
| Descrição | [MG] Marcação |
| Identificador | br.com.sankhya.pwn.margran.Marcacao |
| Tipo de Controle | Item de Menu |
| Tipo de Filhos | Item de Menu |
| Orientação | Vertical |
| Eventol | ${dynaform:MgBloco} |
| contexto | pwnmargran |
| entityName | MgBloco |
| resourceID | br.com.pwn.margran.marcacao |
