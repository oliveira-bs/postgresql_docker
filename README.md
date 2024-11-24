# Projeto - Banco de Dados PostgreSQL com Docker

Este projeto cria um banco de dados PostgreSQL para um sistema de inventário usando Docker e Docker Compose. Inclui tabelas para `categories`, `products` e `stock`.

## Pré-requisitos

- Docker e Docker Compose instalados

## Como executar o projeto

1. Clone este repositório.
2. No terminal, navegue até o diretório do projeto.
3. Execute o comando abaixo para iniciar o banco de dados PostgreSQL com o Docker Compose:

```
docker-compose up -d
```

4. Verifique se o container está em execução:

```
docker ps
```

5. Possibilidades para interromper (parar) ou desligar (remover) o container do Docker:

**I** - Para parar o container (interromper a execução sem removê-lo):

```
docker-compose stop
```

**II** - ou, se preferir, especificando o nome do serviço:

```
docker stop postgres_inventory
```

**III** - Para remover o container (desligá-lo e remover a instância do container):

```
docker-compose down
```

Isso encerra e remove todos os containers definidos no arquivo docker-compose.yml, mas mantém os volumes e redes persistentes.

**IV** - Para remover containers, redes e volumes: Se você quiser limpar tudo, incluindo os volumes (ou seja, os dados persistidos):

```
docker-compose down -v
```


## Estrutura do Projeto

O projeto terá a seguinte estrutura de diretórios e arquivos:

```
inventory_project/
│
├── docker-compose.yml
├── init.sql
└── README.md
```

    docker-compose.yml: Arquivo que configura e orquestra o container PostgreSQL.

    init.sql: Script SQL para inicializar o banco de dados, criando tabelas e inserindo dados iniciais.
    
    README.md: Um arquivo de documentação simples com instruções para rodar o projeto.

## Detalhes dos arquivos

1. Arquivo [docker-compose.yml](./docker-compose.yml)

Este arquivo irá configurar o PostgreSQL e definir volumes para persistência dos dados. Assim, mesmo que o container seja reiniciado, os dados serão preservados.

**Explicação:**

image: Utiliza a última versão do PostgreSQL.
environment: Define variáveis de ambiente para o usuário, senha e nome do banco de dados.
ports: Mapeia a porta 5432 do container para a porta 5432 do host, tornando o banco acessível localmente.
volumes:
    pgdata: Armazena os dados de maneira persistente.
    init.sql: Este arquivo será executado automaticamente na inicialização, criando as tabelas e inserindo dados iniciais.

O banco de dados estará disponível na porta 5432, com as tabelas e dados iniciais criados automaticamente.

2. Arquivo [init.sql](./init.sql)

Este script será carregado automaticamente pelo PostgreSQL na inicialização, criando tabelas e inserindo dados de exemplo.


**Explicação do SQL:**

    categories: Tabela para as categorias dos produtos.
    products: Tabela para os produtos, com uma chave estrangeira (category_id) para vincular à tabela de categorias.
    stock: Tabela para controlar a quantidade em estoque de cada produto, vinculada pela chave estrangeira product_id.
    Dados iniciais: Insere categorias, produtos e quantidades em estoque para teste.

3. Arquivo [README.md](./README.md)

Arquivo documentação do projeto.

## Acessando o Banco de Dados

Você pode acessar o banco de dados usando ferramentas com `psql`, `DBeaver` ou qualquer cliente PostgreSQL. Use as seguintes credenciais:

    Host: localhost
    Porta: 5439
    Usuário: admin
    Senha: password
    Banco de dados: inventory_db


