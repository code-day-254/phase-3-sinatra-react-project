# IMPALA HOTEL- React-Sinatra App

This is a web application designed to help users or clients to make a complete review about the hotel. Users will have the ability to create, view, update and delete their reviews about the hotel.

## Introduction

The focus of this project is **building a Sinatra API backend** that uses
**Active Record** to access and persist data in a database, which will be used
by a separate **React frontend** that interacts with the database via the API.

## Installation & Setup of Backend

Fork and clone (https://github.com/code-day-254/phase-3-sinatra-react-project.git) repo onto your computer. In your terminal, cd to the sinatra_project folder. Run `bundle install` to load the Ruby gems and dependencies. This web application has seed data added, be sure to run `rake db:migrate` and `rake db:seed` if you would like to test with the provided seed data. Data can be found in the db folder (seeds.rb) and finally run the command below

```console
$ bundle exec rake server
```

This will run your server on port
[http://localhost:9292](http://localhost:9292).

### Frontend Setup

Fork and clone the (https://github.com/code-day-254/react-front-end.git) repo onto your computer. In your terminal, cd to the sinatra_project folder and run the command below to start it.

```console
$ npm run dev
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/AD0791/sinatra_project. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
