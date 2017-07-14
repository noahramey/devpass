![Random Lock Logo](./app/assets/images/lock-icon.png)
# DevPass (Work in Progress)
> Password Manager for Developers

DevPass is a password manager made specifically with Developers in mind. As of right now, this is mainly for practice using a languages without relying on many frameworks. Styled to look like the [Atom text editor](https://github.com/atom/atom) with the "One Dark" [UI](https://github.com/atom/one-dark-ui) and [Syntax](https://github.com/atom/one-dark-syntax) themes.

## Installing / Getting started

There is no live version currently, so be sure to clone, setup the database locally (PostgreSQL required), and start the server.

```
$ git clone https://github.com/noahramey/devpass.git
$ cd devpass/
$ rails db:create db:migrate
$ rails s
```

The application will be available at [localhost:3000](http://localhost:3000).

## Developing

### Built With
* Ruby on Rails [GitHub](https://github.com/rails/rails)
* CoffeeScript [GitHub](https://github.com/jashkenas/coffeescript)
* jQuery [GitHub](https://github.com/jquery/jquery)
* Mutation Summary Library [GitHub](https://github.com/rafaelw/mutation-summary)
* CSS3

### Prerequisites
Ruby 2.4.1, Rails 5.1+, PostgreSQL 9.6.3

### Tests
Work in Progress.

### Licensing
This project is released under the [MIT License](https://opensource.org/licenses/MIT)
