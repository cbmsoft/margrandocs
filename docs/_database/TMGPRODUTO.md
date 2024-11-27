---
id: tmgproduto
title: '[MG] Produto'
description: Campos complementares do cadastro de produtos, necessários aos procedimentos do módulo Mármore e Granito.
authors:
    - Cassio Menezes
tags: 
- database
- table
---
# TMGPRODUTO

## Detalhamento do Objeto

Campos complementares do cadastro de produtos, necessários aos procedimentos do módulo Mármore e Granito.

### Objetos Relacionados

| Nome | Tipo do Objeto | Descrição |
|--|--|--|
| TGFPRO | Tabela | Produto |
| [TMGDUREZA](TMGDUREZA.md) | Tabela | [MG] Dureza |
| [TMGCLASSEMAT](TMGCLASSEMAT.md) | Tabela | [MG] Classe de Material |

### Modelagem

```mermaid
erDiagram
    TGFPRO ||--|| TMGPRODUTO : contains
    TMGPRODUTO ||--o{ TMGDUREZA : contains
    TMGPRODUTO ||--o{ TMGCLASSEMAT : contains
    TMGPRODUTO ||--|| TIPOPROD : enum
    TMGPRODUTO ||--|| TIPOPOLI : enum

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
        number ALTURAUTIL "Altura Útil mm (insumos: Lâminas)"
        number PESOLAMINA "Peso KG (Insumos:Laminas)"
        number PESOPMM "Peso por Milimetro (insumos: Lâminas)"
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
```

```mermaid
classDiagram
    class MgProduto{
      -BigDecimal codProd
      -String tipoProd
      -String descrIngles
      -MgDureza dureza
      -BigDecimal pesoM3
      -BigDecimal fatQtdChapas
      -MgClasseMat classificacao
      -String tipoPoli
      -BigDecimal espessLamFio
      -BigDecimal espessuraChapa
      -BigDecimal bkVinculo
      -BigDecimal alturaUtil
      -BigDecimal pesoLamina
      -BigDecimal pesoPMm
      +loadByPk(Object... keyValue)
      +loadByVO(DynamicVO vo)
      +persists() DynamicVO
    }
```

```java
$sql.select("P.DESCRPROD","TGFPRO P","P.CODPROD = "+$col_CODPROD);
	if($sql.next()){
		return $sql.getString(1);
	}
	
return null;


return com.sankhya.util.BigDecimalUtil.getValueOrZero((java.math.BigDecimal) $col_KMCHEGADA).doubleValue() - com.sankhya.util.BigDecimalUtil.getValueOrZero((java.math.BigDecimal) $col_KMSAIDA).doubleValue()

return com.sankhya.util.BigDecimalUtil.getValueOrZero($col_COMPRIMENTO).multiply(com.sankhya.util.BigDecimalUtil.getValueOrZero($col_ALTURA)).multiply(com.sankhya.util.BigDecimalUtil.getValueOrZero($col_LARGURA))

return com.sankhya.util.BigDecimalUtil.getValueOrZero($col_COMPRIMENTO_LIQ).multiply(com.sankhya.util.BigDecimalUtil.getValueOrZero($col_ALTURA_LIQ)).multiply(com.sankhya.util.BigDecimalUtil.getValueOrZero($col_LARGURA_LIQ))

```

### Histórico de Revisões

| Versão | Data | Autor | Observações |
|:--:|:--:|--|--|
| 1.1 | 19/11/2025 | Cassio Menezes | Ajuste nomenclatura |
| 1.0 | 12/11/2025 | Cassio Menezes | Criação do documento |
