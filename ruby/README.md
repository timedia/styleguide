# Ruby on Rails 用 Linter/Formatter 設定

## Linter/Formatter
- RuboCop

### Extensions
- RuboCop Performance
- RuboCop Rails
- RuboCop RSpec

## 使い方
### 1. 必要なファイルを、プロジェクトのルートディレクトリに作成する
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

  # 必要な場合は、ここにプロジェクトごとのカスタム設定を書く
  ```

### 2. RuboCop の実行
```sh
bundle install
bundle exec rubocop
```
