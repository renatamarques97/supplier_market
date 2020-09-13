[![Build Status](https://circleci.com/gh/renatamarques97/suplier_market.svg?style=svg)](https://app.circleci.com/pipelines/github/renatamarques97/suplier_market)
[![Code Climate](https://codeclimate.com/github/renatamarques97/suplier_market.svg)](https://codeclimate.com/github/renatamarques97/suplier_market)

# Supplier Market

### [Production App]()

### Ruby version
```
2.7.1
```

### Rails version
```
6.0.3
```

### Configuration
```shell
bundle install
yarn install
```

### Database creation
```shell
bundle exec rails db:create
bundle exec rails db:migrate
```

### Initialize postgres
```shell
pg_ctl start
```

### How to run the test suite
```shell
bundle exec rspec
```

### Run the server
```shell
gem install foreman
foreman start -f Procfile.dev
```

See `http://localhost:5000/`

## Documentation

### Authors

[Renata Marques](https://www.linkedin.com/in/renata-marques-b27877119/)

[Leonardo Leão](https://www.linkedin.com/in/leonardo-ar%C3%AAa-le%C3%A3o-s%C3%A1-hollanda-de-gusm%C3%A3o-136402171/)

[Alessandro Barros](https://www.linkedin.com/in/alessandro-barros-4075a112b/)

### License

This project is licensed under Apache license
