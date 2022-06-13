# Ruby 用 Linter/Formatter 設定

## Linter/Formatter
- RuboCop

### 設定ファイルのバリエーション
#### RuboCop
- [Base](./rubocop/config/base.yml)
- [Rails](./rubocop/config/rails.yml)
- [RSpec](./rubocop/config/rspec.yml)

## 使い方
### 1. 必要なファイルを、プロジェクトのルートディレクトリに作成する
- Gemfile
  ```ruby
  # frozen_string_literal: true

  source 'https://rubygems.org'
  git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

  group :development, :test do
    github 'timedia/styleguide', glob: 'ruby/**/*.gemspec' do
      gem 'rubocop-config-timedia', require: false
    end
  end
  ```
- .rubocop.yml
  - Rails プロジェクトの場合
    ```yaml
    inherit_gem:
      rubocop-config-timedia:
        - config/base.yml
        - config/rails.yml
        - config/rspec.yml # RSpec 利用時のみ

    AllCops:
      TargetRubyVersion: 2.7
      Exclude:
        - bin/**/*
        - config/*
        - config/environments/*
        - db/**/*
        - node_modules/**/*
        - vendor/**/*

    # 必要な場合は、ここにプロジェクトごとのカスタム設定を書く
    ```
  - Rails を使っていないプロジェクトの場合
    ```yaml
    inherit_gem:
      rubocop-config-timedia:
        - config/base.yml
        - config/rspec.yml # RSpec 利用時のみ

    AllCops:
      TargetRubyVersion: 2.7
      Exclude:
        - vendor/**/*

    # 必要な場合は、ここにプロジェクトごとのカスタム設定を書く
    ```

### 2. RuboCop の実行
```sh
bundle install
bundle exec rubocop
```

## Tips
### 未定義の Cop が読み込めず、RuboCop の実行に失敗してしまう
1. `bundle update rubocop` して、RuboCop のバージョンを上げてください
2. （解決しない/できない場合）RuboCop の実行時に `--ignore-unrecognized-cops` オプションを指定してください
