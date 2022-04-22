# Trekpedia API (Rails Version)

[![ci status](https://github.com/gnramsay/trekpedia-api-rails/actions/workflows/rubyonrails.yml/badge.svg)](https://github.com/gnramsay/trekpedia-api-rails/actions)
[![Coverage Status](https://coveralls.io/repos/github/gnramsay/trekpedia-api-rails/badge.svg?branch=main)](https://coveralls.io/github/gnramsay/trekpedia-api-rails?branch=main)

This is a WIP API to serve my [Trekpedia][trekpedia] data.

The primary goal is however to get myself familiar again with Ruby/Rails after a
long gap (I primarily code in Python/Django/React these days), Improve my
testing methodology and learn `GitHub Actions`.

As the base Trekpedia data is improved and updated, I will likewise update this
API.

Full documentation incoming once the basic functionality is complete.

## Ruby and Rails versions

This API is being developed using Ruby `2.7.6` and Rails `6.1.5` which were the
latest releases of their Major verisons at development time.

The CI tests however, **ARE** run against the following matrix of Ruby versions
:

```ruby
[ 2.7, 3.0, 3.1 ]
```

I have no plans to migrate to Rails 7 at this time

## System dependencies

Standard requirements for a Ruby install and a Rails application. Develpment is
carried out on an Ubuntu 20.04 box, using `rbenv` to version-control my Rubies.

## Setup

Clone the application as below. The repo contains the Trekdata as a sub-module
so needs the extra flag :

`git clone --recurse-submodules https://github.com/gnramsay/trekpedia-api-rails.git`

## Database creation and initialization

Run `rails db:setup` to create the database, load schema and the Trekpedia data in one action.

## How to run the test suite

Run `rspec` from the project root. Test coverage is currently 100%

## Deployment instructions

[trekpedia]: https://github.com/gnramsay/trekpedia
