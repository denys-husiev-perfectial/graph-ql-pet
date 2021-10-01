# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby File.open('.ruby-version').readline.chomp.delete_prefix('ruby-').delete_suffix('@graph_ql_pet')

gem 'bcrypt'
gem 'bootsnap', require: false
gem 'graphql'
gem 'pg'
gem 'puma'
gem 'rack-cors'
gem 'rails'

group :development, :test do
  gem 'pry'
  gem 'rubocop'
  gem 'rubocop-faker'
  gem 'rubocop-i18n'
  gem 'rubocop-performance'
  gem 'rubocop-rails'
  gem 'rubocop-rake'
  gem 'rubocop-rspec'
  gem 'rubocop-thread_safety'
end

group :development do
  gem 'graphiql-rails'
  gem 'listen'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'sprockets', '~>3.0'
end
