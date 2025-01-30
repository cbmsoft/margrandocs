---
id: tmgproduto
title: '[MG] Produto'
description: Campos complementares do cadastro de produtos, necessários aos procedimentos do módulo Mármore e Granito.
authors:
    - Cassio Menezes
tags: 
- table
---
# TMGPRODUTO

## Detalhamento do Objeto

Campos complementares do cadastro de produtos, necessários aos procedimentos do módulo Mármore e Granito.

| Evento | Valor |
|--|--|
| **Nome tabela** | TMGPRODUTO |
| **Descrição** | [MG] Produto |
| **Nome instância** | MgProduto |
| **Descrição instância** | Complemento do Produto |
| **Lançador** |
| Descrição do Controle | [MG] Produto |
| Identificador | br.com.sankhya.pwn.margran.Produto |
| Evento | ${dynaform:MgProduto} |
| contexto | pwnmargran |
| entityName | MgProduto |
| resourceID | br.com.pwn.margran.core.mgproduto |

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TGFPRO | Tabela | Produto |
| [TMGDUREZA](TMGDUREZA.md) | Tabela | [MG] Dureza |
| [TMGCLASSEMAT](TMGCLASSEMAT.md) | Tabela | [MG] Classe de Material |
| [TMGPRODUTOVINC](TMGPRODUTOVINC.md) | Tabela | [MG] Produto Vinculado |

### Modelagem

```mermaid
erDiagram
    TMGPRODUTO ||--|| TGFPRO : contains
    TMGPRODUTO ||--o{ TMGDUREZA : contains
    TMGPRODUTO ||--o{ TMGCLASSEMAT : contains
    TMGPRODUTO ||--o{ TMGPRODUTOVINC : contains
    TMGPRODUTO ||--|| TIPOPROD : enum
    TMGPRODUTO ||--|| TIPOPOLI : enum
    TMGPRODUTO ||--|| CLASSPRODUCAO : enum

    TMGPRODUTO {
        number CODPROD PK,FK "Cód. Produto"
        varchar TIPOPROD "Tipo do Produto"
        varchar DESCRINGLES "Descrição em Inglês"
        number IDDUREZA FK "Classificação de Dureza"
        number PESOM3 "Peso por M³/M² (ton)"
        number FATQTDCHAPAS "Fator para Calculo da Qtde de Chapas"
        number CODCLASSMAT FK "Classe do Material"
        varchar TIPOPOLI "Tipo de Polimento"
        number ESPESSLAMFIO "Espessura da Lâmina ou fio (cm)"
        number ESPESSURACHAPA "Espessura da Chapa (em cm)"
        number BKVINCULO "Prod. Bloco p/ Vínculo"
        number ALTURAUTIL "Altura Útil mm (Insumos: Lâminas)"
        number PESOLAMINA "Peso KG (Insumos:Laminas)"
        number PESOPMM "Peso por Milimetro (Insumos: Lâminas)"
        varchar CLASSPRODUCAO "Classificação Produção"
    }
    TGFPRO {
        number CODPROD PK "Código"
    }
    TMGDUREZA {
        number ID PK "Id."
    }
    TMGCLASSEMAT {
        number ID PK "Id."
    }
    TMGPRODUTOVINC {
        number CODPROD PK,FK "Cód. Produto"
        number CODPRODVINC PK,FK "Cód. Produto Vinculado"
    }
    TIPOPROD {
        varchar B "Bloco"
        varchar C "Chapa Bruta"
        varchar P "Chapa Beneficiada"
        varchar I "Insumo"
        varchar L "Lâmina"
        varchar O "Outros"
        varchar R "Recortado"
    }
    TIPOPOLI {
        varchar _1 "Polimento Direto"
        varchar _2 "Resinado"
    }
    CLASSPRODUCAO {
        varchar _1 "Artificial"
        varchar _2 "Basico PR"
        varchar _3 "Basico PD"
        varchar _4 "Exotico"
        varchar _5 "Marmore"
        varchar _6 "Quartizito"
        varchar _7 "Super Exotico"
        varchar _8 "Super Quartizito"
    }
```
### Campos Calculados

#### DESCRPROD

```java
$sql.select("P.DESCRPROD","TGFPRO P","P.CODPROD = "+$col_CODPROD);
	if($sql.next()){
		return $sql.getString(1);
	}
	
return null;
```

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 1.3 | 03/01/2025 | Cassio Menezes | Adicionar campo |
| 1.2 | 03/01/2025 | Cassio Menezes | Nova estrutura |
| 1.1 | 19/11/2024 | Cassio Menezes | Ajuste nomenclatura |
| 1.0 | 12/11/2024 | Cassio Menezes | Criação do documento |
