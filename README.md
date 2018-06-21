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

## MySQL setup NOTE

```sh
sudo docker run -d --restart=always -e MYSQL_ALLOW_EMPTY_PASSWORD=yes -p 13306:3306 mysql:5.7.22
```

## Rails server start

export DB_HOST=127.0.0.1
export DB_PORT=13306
bin/rails db:setup
bin/rails s
```
