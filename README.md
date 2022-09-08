# Trekpedia API (Rails Version)

[![ci status](https://github.com/gnramsay/trekpedia-api-rails/actions/workflows/rubyonrails.yml/badge.svg)](https://github.com/gnramsay/trekpedia-api-rails/actions)
[![Coverage Status](https://coveralls.io/repos/github/gnramsay/trekpedia-api-rails/badge.svg?branch=main)](https://coveralls.io/github/gnramsay/trekpedia-api-rails?branch=main)

This Rails application is a WIP API to serve my [Trekpedia][trekpedia] data.
Please note that it is in no way properly functional yet.

The primary goal is to refamiliarize myself with [Ruby][ruby] and [Rails][rails]
after a long gap (I primarily code in Python/Django/React these days), Improve
my testing methodology and learn `GitHub Actions`.

As the base Trekpedia data is improved and updated, I will likewise update this
API.

Full documentation is incoming once the basic functionality is complete.

## Ruby and Rails versions

This API uses Ruby `2.7.6` and Rails `6.1.5`, the latest releases of their Major
versions at the time of development.

The CI tests, however, **ARE** run against the following matrix of Ruby versions
:

```ruby
[ 2.7, 3.0, 3.1 ]
```

I have no plans to migrate to Rails 7 at this time

## System dependencies

You only need the standard requirements for a [Ruby][ruby] install and a
[Rails][rails] application. Development is carried out on an Ubuntu 20.04 box,
using [rbenv][rbenv] to version-control my Rubies.

## Setup

Clone the application as below. The repo contains the Trekdata as a sub-module,
and so requires the extra flag :

```bash
git clone --recurse-submodules https://github.com/gnramsay/trekpedia-api-rails.git
```

Run bundler to install the dependencies.

```bash
bundle
```

## Database creation and initialization

Run `rails db:setup` to initialize the database, load the schema, and import the
Trekpedia data in one action.

## How to run the test suite

Run `rspec` from the project root. Test coverage is currently 100%

## Deployment instructions

To be written.

[trekpedia]: https://github.com/gnramsay/trekpedia

[rbenv]: https://github.com/rbenv/rbenv
[ruby]: https://www.ruby-lang.org
[rails]: https://rubyonrails.org/
