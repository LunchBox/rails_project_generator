## Create the rails project

```
$ ./create_project.sh
$ cd rails_app
$ docker compose up --build
```

Run cmd in app

```
$ docker compose exec rails g scaffold task name:string
$ docker compose exec rake db:migrate
```

For delete the named volumes of db or re-create db

```
$ docker compose down -v
$ docker compose up --build
```
