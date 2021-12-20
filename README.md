# README

This repository create backend server to load all data from graphql and response JSON data

# SET UP AND RUN

## On development
## Install packages
```bundle install```

## Config Project

### Create environment file
```cp .env.example .env```

### Edit .env file with your config

### Migrate and seed db
```rails db:migrate & rails db:seed```

### Run server
```rails s```

Go to [localhost:3000](localhost:3000)

## On production (Heroku)
### Setup Heroku server
[https://devcenter.heroku.com/articles/getting-started-with-rails6](https://devcenter.heroku.com/articles/getting-started-with-rails6)

### Config environment
Go to `Heroku Enviroment`(Heroku dashboard -> Settings -> Config Vars) and copy environments from .env file

### Upload code to heroku
#### Solution 1: Upload code to heroku server
[https://devcenter.heroku.com/articles/getting-started-with-rails6](https://devcenter.heroku.com/articles/getting-started-with-rails6)

#### Solution 2: Get code from github (CD)
[https://devcenter.heroku.com/articles/github-integration](https://devcenter.heroku.com/articles/github-integration)

# Demo
[https://hacker-news-rails-with-crawl.herokuapp.com/](https://hacker-news-rails-with-crawl.herokuapp.com/)
