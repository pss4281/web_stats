source 'https://rubygems.org'

gem 'rails', '3.2.6'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

group :development do
  gem 'sqlite3'
end

gem 'pg'
gem 'thin'
gem 'devise'
gem 'resque', :require => 'resque/server'
gem 'simple_form'
gem 'inherited_resources'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'therubyracer', :platforms => :ruby
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :test, :development do
  gem 'rspec-rails'
  gem 'database_cleaner'
  gem 'spork'
end

group :test do
  # bundler requires these gems while running tests
  gem "capybara"
  gem "rspec"
  gem 'rspec-rails-mocha'
  gem "factory_girl"
  gem "launchy"
  gem "fakeweb"
  gem "ruby-prof"
end
