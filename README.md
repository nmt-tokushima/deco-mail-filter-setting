# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Setup examples

- Ruby

```sh
rbenv install 2.5.1
rbenv local 2.5.1
```

- Node.js

```sh
nodebrew install-binary v9.11.1
nodebrew use v9.11.1
```

## MySQL setup NOTE

```sh
sudo docker run -d --restart=always -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -p 13306:3306 mysql:5.7.22
```

## Rails server start

```sh
# Copy .env.example to .env and edit it
# or
# run following commands
export DB_HOST=127.0.0.1
export DB_PORT=13306
```

```sh
bin/rails db:setup
bin/webpack-dev-server
bin/rails s
```

## Assets precompile for production

```sh
bin/rails assets:precompile
```

JS, CSS and some other files are created in `public/packs`.
