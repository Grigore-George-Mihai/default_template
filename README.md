## Monolith Template

This repository serves as a default template for a monolithic Ruby on Rails (RoR) application. It includes a pre-configured setup with essential gems and tools to streamline development.

### Table of Contents

- [Installation](#installation)
- [Setup](#setup)
- [Gems](#gems)
- [Rake Tasks](#rake-tasks)
- [Docker Setup](#docker-setup)
- [Contact](#contact)

### Installation
Clone the repository
```bash
git clone https://github.com/Grigore-George-Mihai/default_template
```

---

### Setup
**1. Rename the Application**

This will update the app name everywhere it appears (module name, titles, DB names, cable prefixes, Docker volumes, etc.).
```bash
bin/rails setup:rename_app
```

**2. Create Environment Files**

Copy environment template files into `.env.development` and `.env.test`.
```bash
bin/rails setup:copy_env
```
Then open each file and update values as needed:
- Database credentials (`POSTGRES_USER`, `POSTGRES_PASSWORD`)
- Any other environment-specific variables

**3. Set Up the Database**
```bash
bin/rails db:prepare   # Creates and migrates the database
bin/rails db:seed      # Loads seed data
```

**4. Optional Integrations**
- [Devise](https://github.com/heartcombo/devise) — Adjust configuration in `config/initializers/devise.rb` if needed.
- [Scout APM](https://github.com/scoutapp/scout_apm_ruby) — Add your SCOUT_KEY value in .env.development (or the appropriate .env file) to enable. If left blank, ScoutAPM stays disabled.
- [Rollbar](https://github.com/rollbar/rollbar-gem) — Add your ROLLBAR_ACCESS_TOKEN value in .env.development (or the appropriate .env file) to enable. If left blank, Rollbar stays disabled.

 ✅ You’re now ready to start development!

---

### Gems

**Database and Monitoring**
- [Pg](https://github.com/ged/ruby-pg): PostgreSQL driver for Ruby, providing fast and efficient database connectivity.
- [PgHero](https://github.com/ankane/pghero): A tool for monitoring PostgreSQL database performance, including query insights, index suggestions, and table size analysis.

**Authentication**
- [Devise](https://github.com/heartcombo/devise): Flexible authentication solution for Rails based on Warden.

**Admin Interface**
- [ActiveAdmin](https://github.com/activeadmin/activeadmin): A flexible and extensible admin framework for Ruby on Rails applications, making it easy to build custom admin panels.

**Background Processing**
- [Sidekiq](https://github.com/mperham/sidekiq): Efficient background processing for Ruby applications.
- [Sidekiq-Scheduler](https://github.com/moove-it/sidekiq-scheduler): Extends Sidekiq to support scheduled and recurring jobs using a simple configuration.
- [Redis](https://github.com/redis/redis-rb): In-memory data structure store used by Sidekiq for managing background job queues, scheduling, and retries.

**Forms**
- [Simple Form](https://github.com/heartcombo/simple_form): Simplifies form creation with a clean and flexible syntax.

**Performance Monitoring**
- [Scout APM](https://github.com/scoutapp/scout_apm_ruby): Application monitoring tool.
- [Bullet](https://github.com/flyerhzm/bullet): Detects N+1 queries and unused eager loading.
- [Rack Mini Profiler](https://github.com/MiniProfiler/rack-mini-profiler): Performance profiling tool.

**Error Tracking**
- [Rollbar](https://github.com/rollbar/rollbar-gem): Real-time error tracking and reporting.

**Code Quality & Linting**
- [Rubocop Rails Suite](https://github.com/Grigore-George-Mihai/rubocop-rails-suite): A custom suite that bundles Rubocop with various plugins for Rails projects.

**Testing**
- [Factory Bot Rails](https://github.com/thoughtbot/factory_bot_rails): Provides fixtures replacement with a straightforward definition syntax.
- [Faker](https://github.com/faker-ruby/faker): A library for generating fake data.
- [RSpec Rails](https://github.com/rspec/rspec-rails): Testing framework for Rails.
- [Shoulda Matchers](https://github.com/thoughtbot/shoulda-matchers): Simplifies testing Rails applications with RSpec.
- [SimpleCov](https://github.com/simplecov-ruby/simplecov): Code coverage analysis tool.
- [Rspec-Sidekiq](https://github.com/philostler/rspec-sidekiq): Testing framework for Sidekiq jobs.

**Security**
- [Brakeman](https://github.com/presidentbeef/brakeman): Static analysis tool for finding security vulnerabilities in Rails applications.
- [Bundler Audit](https://github.com/rubysec/bundler-audit): Scans your Gemfile for known vulnerabilities.

**Environment Management**
- [Dotenv Rails](https://github.com/bkeepers/dotenv): Loads environment variables from `.env`.

---

### Rake Tasks
Run the following rake task to check for security risks in your application:
```bash
bin/rails security:check
```
- This task runs tools like Brakeman and Bundler Audit to ensure your application is secure.

---

### Docker Setup
If you prefer to run the application inside a Docker container, follow these steps:

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

---

### Contact
For questions or further information, feel free to reach out via [LinkedIn](https://www.linkedin.com/in/grigore-george-mihai-73981b86/).
