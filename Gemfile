# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# ruby '2.7.6'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.7'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.4'
# Use Puma as the app server
gem 'puma', '~> 5.6'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.12.0', require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'rubocop', '~> 1.36.0', require: false, groups: %i[development test]
gem 'rubocop-performance', '~> 1.15.0', groups: %i[development test]
gem 'rubocop-rails', '~> 2.16', groups: %i[development test]
gem 'rubocop-rspec', '~> 2.13.1', groups: %i[development test]

gem 'factory_bot_rails', '~> 6.2', groups: %i[development test]
gem 'rspec-rails', '~> 5.1.2', groups: %i[development test]

gem 'solargraph', '~> 0.46.0', groups: %i[development test]

gem 'spring-commands-rspec', group: :development
gem 'spring-commands-rubocop', git: 'https://github.com/seapagan/spring-commands-rubocop', group: :development

gem 'simplecov', '~> 0.21.2', group: :test
gem 'simplecov-lcov', group: :test

gem 'brakeman', '~> 5.3', groups: %i[development test]
gem 'bundle-audit', '~> 0.1.0', group: %i[development test]

gem 'colorize', '~> 0.8.1'

# required to fix RSpec in Ruby 3.1
gem 'net-smtp', require: false, groups: :test

# fix annoying "already initialized constant errors" messages in console
gem 'net-http'
