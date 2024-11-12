# Arquitetura do Projeto

Este é um projeto de Add-on para o ERP Sankhya Om e segue as diretrizes apresentadas para customizações no site Sanhya Developer: https://developer.sankhya.com.br/docs/new-sdk

## Eclipse

Criar os projetos:

`PWN-Margran-Model`  
`PWN-Margran-VC`

Criar pasta `api_custom/{nomeExtensao}/java-lib` no workspace.

```powershell
C:.
├───bin
├───PWN-Margran-Model
│   ├───.settings
│   ├───bin
│   ├───build
│   │   └───META-INF
│   ├───ejbsrc
│   ├───src
│   └───test
└───PWN-Margran-VC
    ├───.settings
    ├───bin
    ├───build
    │   ├───html5
    │   ├───META-INF
    │   └───WEB-INF
    │       └───resources
    └───src
```

## Convenções

Para nomeação de pacotes vamos utilizar `br.com.pwn.margran`.

**Nome do Projeto**: PWN-Margran  
**Nome da Extensão**: pwnmargran

**Prefixo de tabelas**: `TMG`

**`NUMOS`**: 0110

## Tabelas

### [TMGPRODUTO](../_database/TMGPRODUTO.md)