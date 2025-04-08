# Arquitetura do Projeto

Este é um projeto de Add-on para o ERP Sankhya Om e segue as diretrizes apresentadas para customizações no site Sanhya Developer: [https://developer.sankhya.com.br/docs/new-sdk](https://developer.sankhya.com.br/docs/new-sdk)

## SSH Tunnel


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

## Documentação Técnica

### [Estrutura de Dados](../_database/index.md)

### Implementação

A diretriz é trabalhar o máximo possível com classes `POJO` para representar os objetos que serão utilizados nos processamentos ao longo do sistema.

Um objeto simples contém somente os atributos necessários, sem implementação de métodos, à excessão de _getters_ específicos que serão necessários quando houver necessidade de efetuar algum tipo de computação que não seja buscar diretamente o valor do atributo.

Quando o objeto representa algum dado armazenado no banco de dados então vamos usar uma interface com mesmo nome do objeto, com sufixo `*Repository` e com os métodos CRUD necessários.

Haverá uma classe concreta que vai implementar a interface e que irá efetuar a interação com banco de dados conforme contrato estabelecido na interface.

Com o objetivo de reduzir o acomplamento com classes específicas da Sankhya e com o acesso direto ao banco para permtir testes vamos utilizar um executor de consultas que poderá ter um _mock_ para retornar o objeto desejado.

Vamos utilizar a biblioteca Lombok principalmente para classes POJO.

```java
@Value
@Builder(builderMethodName = "buildValid")
@AllArgsConstructor(access = lombok.AccessLevel.PRIVATE)
public final class SerradaXBloco implements EntityBean {

    /**
     * Custom builder to include validation logic.
     */
    public static class SerradaXBlocoBuilder {
        public SerradaXBloco build() {
            SerradaXBloco instance = new SerradaXBloco(nuSerd, sequencia, codEmp, idBloco, bloco, produtoAcabado, qtd, espessLamFio);
            instance.validate();
            return instance;
        }
    }
    
    private void validate() {
        if (BigDecimal.ZERO.compareTo(qtd) > 0)
            throw new IllegalArgumentException(BUNDLE.getString(Constants.QUANTITY_SHOULD_BE_GREATER_THAN_ZERO));

        if (BigDecimal.ZERO.compareTo(espessLamFio) > 0)
            throw new IllegalArgumentException(BUNDLE.getString(Constants.THICKNESS_SHOULD_BE_GREATER_THAN_ZERO));
    }
}
```
Considerações:
1. Usar `@Value` para _immutable classes_
1. Quando usar `@Builder`, caso seja necessário efetuar validações de regras de negócio, utilizar `buildValid` como nome