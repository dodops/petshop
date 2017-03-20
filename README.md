# Petshop

[![Code Climate](https://codeclimate.com/github/dodops/petshop/badges/gpa.svg)](https://codeclimate.com/github/dodops/petshop)
[![Test Coverage](https://codeclimate.com/github/dodops/petshop/badges/coverage.svg)](https://codeclimate.com/github/dodops/petshop/coverage)
[![Codeship](https://codeship.com/projects/c67b0f50-ee5f-0134-6d5c-62b847b8d86d/status?branch=master)](https://codeship.com/projects/208707)

Projeto que simula um petshop especializado em cachorros.

[Link de test](https://fierce-hamlet-32255.herokuapp.com/)

## Instalação

### Requisitos

- Ruby;
- PostgreSQL;


### 1 - Instalação de dependências

Após clonar o repositório localmente, entre no diretório criado e execute o seguinte comando para instalar as dependências do projeto:

```console
bundle install
rake db:setup
```

### 2 - Gerador de Dogs

Criei uma `rake_task` em `lib/tasks/populate.rake` que faz a geração de 1.000 cachorros e seus respectivos atributos.
Depois de feita a instalação de dependências e configuração do banco, basta rodar:

```console
rake db:populate
```


## Execução

Para criar um servidor local com a aplicação você deve executar o seguinte comando:

```console
rails s
```

Se tudo estiver OK, você poderá acessar a aplicação através da url [http://localhost:3000](http://localhost:3000).
