# Vex & Heroku examples

## Requirements

For this example you will need:

- [V Language](https://vlang.io/)
- [Heroku CLI](https://devcenter.heroku.com/ja/articles/heroku-cli)

## Deploy

1. clone this repo

2. create heroku app & set buildpack

```shell
heroku create vex-heroku-example --buildpack https://github.com/zztkm/heroku-buildpack-v.git
```

3. deploy

```shell
heroku git:remote -a vex-heroku-example

git push heroku main
# or: git push heroku master
```