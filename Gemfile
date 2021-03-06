source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.6.1"

gem "rails", "~> 5.2.2", ">= 5.2.2.1"
gem "mysql2", ">= 0.3.18", "< 0.5"
gem "puma", "~> 3.11"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"

gem "coffee-rails", "~> 4.2"
gem "turbolinks", "~> 5"
gem "jbuilder", "~> 2.5"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.1.0", require: false

# Redis
gem "redis-rails"

# Background Job
gem "resque", require: "resque/server"
gem "resque-scheduler"
gem "sidekiq"
gem "sidekiq-status"

# Deploy
gem "capistrano"
gem "capistrano-bundler"
gem "capistrano-rails"
gem "capistrano3-unicorn"
gem "unicorn"
gem "capistrano-resque", require: false
gem "capistrano-sidekiq"
gem "capistrano-rvm"

# Support
gem "config"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "pry-byebug"
  gem "pry-rails"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  gem "chromedriver-helper"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Chatwork notification
gem "chatwork"
