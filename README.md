# rails-chat-tutorial
rails chat tutorial with docker compose

## Commands

Docker build images

    $ docker-compose build

Create and migrate database

    $ docker-compose run --rm app bundle exec rake db:create db:migrate

Run project

    $ docker-compose up
