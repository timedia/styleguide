# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name    = 'rubocop-config-timedia'
  spec.version = '0.1.0'
  spec.summary = 'The default RuboCop configuration for TIMEINTERMEDIA, Inc.'
  # NOTE: このgemにはRubyコードを含まないため、要求するRubyバージョンはRuboCop gemと同じ
  #   -> 明示的に指定するとRuboCopの変更を追従しなければならないため、コメントアウトする
  # spec.required_ruby_version = '>= 2.7.0'

  spec.authors  = ['Ryo MAEDA']
  spec.metadata = {
    'allowed_push_host' => 'https://timedia.co.jp/' # rake release できないように適当な host を設定
  }

  spec.files = Dir['config/*.yml']

  spec.add_runtime_dependency 'rubocop', '>= 1.72.0'
  spec.add_runtime_dependency 'rubocop-factory_bot', '>= 2.27.0'
  spec.add_runtime_dependency 'rubocop-performance', '>= 1.24.0'
  spec.add_runtime_dependency 'rubocop-rails', '>= 2.30.0'
  spec.add_runtime_dependency 'rubocop-rspec', '>= 3.5.0'
end
