source 'https://rubygems.org'

gem 'rails', '~>4.2.0'
# gem "strong_parameters"
gem 'sqlite3'
gem 'minitest'
# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'
gem 'jquery-rails'
gem 'bourbon'
gem 'neat'
gem 'bitters'

# json stuff
gem 'rabl'
gem 'oj'

gem 'timelineJS-rails', '~> 1.1.1'

group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

group :development do
  gem 'passenger'
  gem 'rvm-capistrano'
  gem 'capistrano', '2.15.3'
  gem "rack-livereload"
  gem "guard"
  gem 'guard-livereload', require: false
  gem 'rb-fsevent', require: false
end

group :test, :development do
  gem 'minitest-rails'
  gem 'minitest-rails-capybara'
  # gem 'minitest-colorize'
  gem 'minitest-focus'
  gem 'factory_bot'
  gem 'guard-minitest'
  gem 'database_cleaner', '< 1.1.0'
  gem 'faker'
end

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# To use debugger
# gem 'debugger'
