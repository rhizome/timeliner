source 'https://rubygems.org'

gem 'rails', '~>3.2.16'
gem "strong_parameters"
gem 'sqlite3'
gem 'minitest'
# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'
gem 'jquery-rails', "< 3.0.0"
gem 'bourbon'
gem 'neat'

# json stuff
gem 'rabl'
gem 'oj'

gem 'timelineJS-rails', '~> 1.1.1'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'passenger'
  gem 'rvm-capistrano'
  gem 'capistrano', '2.15.3'
  gem "rack-livereload"
  gem "guard", require: false
  gem 'guard-livereload', require: false
  gem 'rb-fsevent', require: false
end

group :test, :development do
  gem 'minitest-rails'
  gem 'minitest-rails-capybara'
  gem 'minitest-colorize'
  gem 'minitest-focus'
  gem 'factory_girl_rails'
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
