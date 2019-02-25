# Grails

## commands

- create app
grails create-app helloworld

- controller
grails> create-controller hello
create in folder grails-app/controllers

- run project
grails> run-app

- generate CRUD (controller and views)
grails> create-domain-class Person
grails> generate-all Person //crud person

## structure

- /grails-app
sctruture groovy
configurations, assets, domain(dominio e model), url, controller("/$controller/$action/$id") and views(use Groovy Server Pages or JSON Views for construction)
- configuration the database is file application.yml and build.gradle

## tests

- src/test/groovy
command to run tests
grails test-app

## BD

** configuration database edit file /exemplo/grails-app/conf/ApplicationDataSource.groovy, in data source (connections and BD).

## Doubt PT

- O que são serviços para o grails
- As views usam Groovy Server Pages
- Qual diferencia entre dominios(corresponde aos dados das tabelas no bd, parece ser o model) e serviços(codigos de negócios, ex:createStudent()) e qual é o model
- Qual framework usam(bootstrap ou materialize) e como se da essa integração
- Configuração do bd externo, e como é dada uma relacão entre tabelas
- Boa pratica para variaveis, funções, classes, ...

# Links

- [Leandro Guarino](https://www.youtube.com/channel/UC7Q_uLJ5hpA3NzlP7I4dGqQ)

# STEPS

- grails> create-app incubatech
- grails> create-domain-class 'company and collaborator'
- grails > generate-all name-domain (add views and controllers)
** o generate só funciona se o domain estiver preenchido.
- using assets bootstrap

