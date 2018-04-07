source 'https://rubygems.org'


ruby '2.4.3'

gem 'rails', '~> 5.2.0.rc2'
gem 'pg', '~> 1.0'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'redis', '~> 4.0'
gem 'mini_magick', '~> 4.8'
gem 'bootsnap', '>= 1.1.0', require: false

# Installed gems
gem 'simple_form', '~> 3.5', '>= 3.5.1'
gem 'devise', '~> 4.4', '>= 4.4.3'
gem 'bootstrap', '~> 4.0'
gem 'jquery-rails'
gem 'nokogiri', '~> 1.8', '>= 1.8.2'
gem 'geocoder', '~> 1.4', '>= 1.4.7'
gem 'font-awesome-sass', '~> 5.0', '>= 5.0.6.2'
gem 'httparty', '~> 0.16.1'
gem 'local_time', '~> 2.0'
gem 'faker', '~> 1.8', '>= 1.8.4'
gem 'sidekiq', '~> 5.1', '>= 5.1.2'
gem 'sidekiq-cron', '~> 0.6.3'
gem 'bootstrap-sass-extras', '~> 0.0.7'
gem 'nanoboxifier'

source 'https://rails-assets.org' do

  gem 'rails-assets-chosen-bootstrap' # if using bootstrap
end




group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
