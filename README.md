# Petshop

[![Code Climate](https://codeclimate.com/github/dodops/petshop/badges/gpa.svg)](https://codeclimate.com/github/dodops/petshop)
[![Codeship](https://codeship.com/projects/c67b0f50-ee5f-0134-6d5c-62b847b8d86d/status?branch=master)](https://codeship.com/projects/208707)

Projeto que simula um petshop especializado em cachorros.


## Instalação

### Requisitos

- Ruby;
- PostgreSQL;

### 1 - Fork

Crie um fork do projeto e clone o **seu repositório** localmente, caso tenha dúvidas em como prosseguir você pode seguir os passos [deste tutorial](http://blog.da2k.com.br/2015/02/04/git-e-github-do-clone-ao-pull-request).

### 2 - Instalação de dependências

Após clonar o repositório localmente, entre no diretório criado e execute o seguinte comando para instalar as dependências do projeto:

```console
bundle install
```

### 3 - Configuração do banco de dados

Agora você poderá executar o comando abaixo que criará o banco de dados localmente, bem como as tabelas e dados previamente definidos para desenvolvimento:

```console
rake db:setup
```

## Execução

Para criar um servidor local com a aplicação você deve executar o seguinte comando:

```console
rails s
```

Se tudo estiver OK, você poderá acessar a aplicação através da url [http://localhost:3000](http://localhost:3000).
