### README

### Clonar o projeto

 Clonar o projeto do GITHUB
```
git clone git@github.com:dalanfaria/api-teste-james.git
```

Instalar as gems

```
bundle install
```

Duplicar o arquivo database.yml.example para database.yml
Configurar conforme os acessos local do postgres, exemplo:

```
username: postgres
password: postgres
```

 Crie o banco de dados:

```
 rake db:create
```
 Gerar as tabelas:

```
 rake db:migrate
```

Popule o bd com os dados iniciais:

```
 rake db:seed
```

Iniciar o service

```
 rails s
```

URLS DISPONIBILIZADAS

```
 localhost:3000/api/v1/people/1.json?
 localhost:3000/api/v1/people.json?
```

