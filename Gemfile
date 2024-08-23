# frozen_string_literal: true

source "https://rubygems.org"

gem "bootsnap", require: false
gem "draper"
gem "importmap-rails"
gem "jbuilder"
gem "pg", "~> 1.1"
gem "puma", ">= 5.0"
gem "rails", "~> 7.2.1"
gem "sassc-rails"
gem "scout_apm"
gem "sidekiq"
gem "simple_form"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tzinfo-data", platforms: %i[windows jruby]

# Authentication
gem "devise"

group :development, :test do
  gem "byebug"
  gem "debug", platforms: %i[mri windows], require: "debug/prelude"
  gem "dotenv-rails"

  # Code Quality & Linting
  gem "rubocop", require: false
  # gem "rubocop-rails-omakase", require: false
  gem "rubocop-factory_bot", require: false
  gem "rubocop-faker", require: false
  gem "rubocop-migration", require: false
  gem "rubocop-performance", require: false
  gem "rubocop-rails", require: false
  gem "rubocop-rake", require: false
  gem "rubocop-rspec", require: false

  # Rspec
  gem "factory_bot_rails"
  gem "faker"
  gem "rspec-rails", "~> 6.0"

  # Security
  gem "brakeman", require: false
  gem "bundler-audit", require: false
end

group :development do
  gem "web-console"

  # Performance
  gem "bullet"
  gem "rack-mini-profiler", require: false
end

group :test do
  gem "capybara"
  gem "rspec-sidekiq"
  gem "selenium-webdriver"
  gem "shoulda-matchers"
  gem "simplecov", require: false
end
