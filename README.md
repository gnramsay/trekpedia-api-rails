# Trekpedia API (Rails Version)

This is a WIP API to serve the [Trekpedia][trekpedia] data.

Full documentation incoming once the basic functionality is complete.

## Ruby and Rails versions

This API is being developed using Ruby `2.7.6` and Rails `6.1.5` which were the
latest releases of their Major verisons at develpoment time.

Ruby 3 is out but I don't currently test against this version, it may work but
YMMV. I **do** intend to add version 3 to the CI tests though.

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
