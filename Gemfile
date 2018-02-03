source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.0'

gem 'rails', '~> 5.2.0.rc1'
gem 'pg', '~> 1.0'
gem 'puma', '~> 3.11'

gem 'sass-rails'
gem 'uglifier'
gem 'jbuilder'
gem 'slim-rails'
gem 'mini_racer'

gem 'bcrypt'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

group :development, :test do
  # Reduces boot times through caching; required in config/boot.rb
  gem 'bootsnap', '>= 1.1.0', require: false

  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'faker'
end

group :development do
  gem 'web-console'
  gem 'listen', '< 3.2'

  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'spring-watcher-listen'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  # gem 'capybara', '~> 2.15'
  # gem 'selenium-webdriver'

  # Easy installation and use of chromedriver to run system tests with Chrome
  # gem 'chromedriver-helper'

  gem 'simplecov'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
