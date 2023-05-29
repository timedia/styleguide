# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name    = 'rubocop-config-timedia'
  spec.version = '0.1.0'
  spec.summary = 'The default RuboCop configuration for TIMEINTERMEDIA, Inc.'
  spec.required_ruby_version = '>= 2.7.0'

  spec.authors  = ['Ryo MAEDA']
  spec.metadata = {
    'allowed_push_host' => 'https://timedia.co.jp/' # rake release できないように適当な host を設定
  }

  spec.files = Dir['config/*.yml']

  spec.add_runtime_dependency 'rubocop', '>= 1.41.0'
  spec.add_runtime_dependency 'rubocop-factory_bot', '>= 2.22.0'
  spec.add_runtime_dependency 'rubocop-performance', '>= 1.13.0'
  spec.add_runtime_dependency 'rubocop-rails', '>= 2.14.0'
  spec.add_runtime_dependency 'rubocop-rspec', '>= 2.22.0'
end
