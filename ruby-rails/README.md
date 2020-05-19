# Style for Ruby on Rails

## Linter/Formatter
- RuboCop

### Using extensions
- RuboCop Performance
- RuboCop Rails
- RuboCop RSpec

## How to use
### 1. Create following files in project root
- Gemfile
  ```ruby
  # frozen_string_literal: true

  source 'https://rubygems.org'

  group :development, :test do
    gem 'rubocop', '~> 0.83', require: false
    gem 'rubocop-performance', require: false
    gem 'rubocop-rails', require: false
    gem 'rubocop-rspec', require: false
  end
  ```
- .gitignore
  ```gitignore
  .rubocop-https-*
  ```
- .rubocop.yml
  ```yaml
  inherit_from:
    - https://raw.githubusercontent.com/timedia/styleguide/master/ruby-rails/.rubocop.yml

  AllCops:
    TargetRubyVersion: 2.7

  # Customize cops for each project here.
  ```

### 2. Run RuboCop
```sh
bundle install
bundle exec rubocop
```
