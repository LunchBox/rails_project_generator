
Build the image ( change the ruby and rails version in Dockerfile if needed )

```
$ docker-compose build
```

Create a project:

```
$ docker-compose run app rails new ${your_project_name} --skip-bundle
```


The command above will create a new container, use these command to remove them

```
$ docker-compose down && docker-compose rm
```

The created project's owner is root by default, you have to change the owner.

```
$ sudo chown user.user ${your_project_name} -R
```
