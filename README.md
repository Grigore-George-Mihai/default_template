# Monolith Template

This repository serves as a default template for a monolithic Ruby on Rails (RoR) application. It includes a pre-configured setup with essential gems and tools to streamline development.

## Table of Contents

- [Installation](#installation)
- [Customize](#customize)
- [Gems](#gems)
- [Rake Tasks](#rake-tasks)
- [Docker Setup](#docker-setup)
- [Contact](#contact)

## Installation

1. **Clone:**

```bash
git clone https://github.com/Grigore-George-Mihai/default_template
```

## Customize

- Update the project name to reflect your application.
- Customize the [Devise](https://github.com/heartcombo/devise) configuration as only basic setup is included; adjust it to suit your specific authentication requirements.
- Modify or remove the settings for [Scout APM](https://github.com/scoutapp/scout_apm_ruby), [Rollbar](https://github.com/rollbar/rollbar-gem), and [PgHero](https://github.com/ankane/pghero) as needed, based on your performance, error tracking, and database monitoring requirements.
- Run the following rake task to create your environment files:
    ```bash
    rake env:setup
    ````
  - After running the task, open the newly created .env.development and .env.test files to modify them with the appropriate environment-specific variables as needed.
- Create DB and seed: 
    ```bash
    rails db:create db:migrate db:seed
    ````

## Gems

### Database and Monitoring
- [Pg](https://github.com/ged/ruby-pg): PostgreSQL driver for Ruby, providing fast and efficient database connectivity.
- [PgHero](https://github.com/ankane/pghero): A tool for monitoring PostgreSQL database performance, including query insights, index suggestions, and table size analysis.

### Authentication
- [Devise](https://github.com/heartcombo/devise): Flexible authentication solution for Rails based on Warden.

### Admin Interface
- [ActiveAdmin](https://github.com/activeadmin/activeadmin): A flexible and extensible admin framework for Ruby on Rails applications, making it easy to build custom admin panels.

### Background Processing
- [Sidekiq](https://github.com/mperham/sidekiq): Efficient background processing for Ruby applications.
- [Sidekiq-Scheduler](https://github.com/moove-it/sidekiq-scheduler): Extends Sidekiq to support scheduled and recurring jobs using a simple configuration.
- [Redis](https://github.com/redis/redis-rb): In-memory data structure store used by Sidekiq for managing background job queues, scheduling, and retries.

### Decorator and Forms
- [Draper](https://github.com/drapergem/draper): Helps in decorating models with additional presentation logic.
- [Simple Form](https://github.com/heartcombo/simple_form): Simplifies form creation with a clean and flexible syntax.

### Performance Monitoring
- [Scout APM](https://github.com/scoutapp/scout_apm_ruby): Application monitoring tool.
- [Bullet](https://github.com/flyerhzm/bullet): Detects N+1 queries and unused eager loading.
- [Rack Mini Profiler](https://github.com/MiniProfiler/rack-mini-profiler): Performance profiling tool.

### Error Tracking
- [Rollbar](https://github.com/rollbar/rollbar-gem): Real-time error tracking and reporting.

### Code Quality & Linting
- [Rubocop Rails Suite](https://github.com/Grigore-George-Mihai/rubocop-rails-suite): A custom suite that bundles Rubocop with various plugins for Rails projects.

### Testing
- [Factory Bot Rails](https://github.com/thoughtbot/factory_bot_rails): Provides fixtures replacement with a straightforward definition syntax.
- [Faker](https://github.com/faker-ruby/faker): A library for generating fake data.
- [RSpec Rails](https://github.com/rspec/rspec-rails): Testing framework for Rails.
- [Shoulda Matchers](https://github.com/thoughtbot/shoulda-matchers): Simplifies testing Rails applications with RSpec.
- [SimpleCov](https://github.com/simplecov-ruby/simplecov): Code coverage analysis tool.
- [Rspec-Sidekiq](https://github.com/philostler/rspec-sidekiq): Testing framework for Sidekiq jobs.

### Security
- [Brakeman](https://github.com/presidentbeef/brakeman): Static analysis tool for finding security vulnerabilities in Rails applications.
- [Bundler Audit](https://github.com/rubysec/bundler-audit): Scans your Gemfile for known vulnerabilities.

### Environment Management
- [Dotenv Rails](https://github.com/bkeepers/dotenv): Loads environment variables from `.env`.

## Rake Tasks

### Security Check
- Run the following rake task to check for security risks in your application:

    ```bash
    rake security:check
    ```

    - This task runs tools like Brakeman and Bundler Audit to ensure your application is secure.

## Docker Setup
- If you prefer to run the application inside a Docker container, follow these steps:

1. **Build the Docker image:**

    ```bash
    docker-compose build
    ```

2. **Start the Application and services:**

    ```bash
    docker-compose up
    ```

3. **Stop the Application:**

    ```bash
    docker-compose down
    ```

4. **Remove named Volumes:**

    ```bash
    docker-compose down --volumes
    ```

## Contact

For questions or further information, feel free to reach out via [LinkedIn](https://www.linkedin.com/in/grigore-george-mihai-73981b86/).
