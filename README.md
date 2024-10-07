Build the image ( change the ruby and rails version in Dockerfile if needed )

## step 1. Build this rails generator

rg is the tag name of the builded image, change it if you like

```
$ docker build -t rg .
```

## step 2. Create a project:

```
$ docker run --rm -it -v ${PWD}/:/app rg rails new {your rails project name} --skip-bundle
```
