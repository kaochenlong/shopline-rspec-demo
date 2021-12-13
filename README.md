# Shopline RSpec Demo App

## Setup steps

- Install Docker first
- Clone this project and run `docker-compose up --build`
- Check out `http://localhost:3000`
- Happy Hacking!

## Installed gems

- [devise](https://github.com/heartcombo/devise)
- [rspec-rails](https://github.com/rspec/rspec-rails)
- [factory_bot_rails](https://github.com/thoughtbot/factory_bot_rails)
- [faker](https://github.com/faker-ruby/faker)
- [guard-rspec](https://github.com/guard/guard-rspec)
- [vcr](https://github.com/vcr/vcr)
- [webmock](https://github.com/bblimke/webmock)
- [rswag](https://github.com/rswag/rswag)

Gemfile:

```ruby
gem 'devise', '~> 4.8'
gem 'rswag', '~> 2.4'

group :development, :test do
  # ...other gems...
  gem 'rspec-rails', '~> 5.0', '>= 5.0.2'
  gem 'factory_bot_rails', '~> 6.2'
  gem 'faker', '~> 2.19'
  gem 'guard-rspec', '~> 4.7', require: false
  gem 'vcr', '~> 6.0'
  gem 'webmock', '~> 3.14'
end
```

## Models

- User(Devise)
  - email:string
  - password:string
- Project
  - name:string
  - description:text
  - user:belongs_to
- Task
  - title:string
  - completed_at:datetime:index
  - project:belongs_to

### Relationship

- User `has_many` Projects, Project `belongs_to` User
- Project `has_many` Tasks, Task `belongs_to` Project

by eddie@5xcampus.com
