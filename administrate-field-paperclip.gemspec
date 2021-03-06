$LOAD_PATH.push File.expand_path('lib', __dir__)

Gem::Specification.new do |gem|
  gem.name = 'administrate-field-paperclip'
  gem.version = '0.0.6'
  gem.authors = ['Fernando Briano']
  gem.email = ['fernando@picandocodigo.net']
  gem.homepage = 'https://github.com/picandocodigo/administrate-field-paperclip'
  gem.summary = 'Paperclip field plugin for Administrate'
  gem.description = 'Integrates Paperclip as a field for Administrate in Rails apps'
  gem.license = 'MIT'

  gem.require_paths = ['lib']
  gem.files = `git ls-files`.split("\n")
  gem.test_files = `git ls-files -- {test,spec,features}/*`.split('\n')

  gem.add_dependency 'administrate', '~> 0.13'
  gem.add_dependency 'rails', '>= 4.2'

  if defined?(JRUBY_VERSION)
    gem.add_development_dependency 'activerecord-jdbcsqlite3-adapter' if defined?(JRUBY_VERSION)
  else
    gem.add_development_dependency 'byebug'
    gem.add_development_dependency 'sqlite3', '~> 1.3.6'
  end
  gem.add_development_dependency 'coveralls'
  gem.add_development_dependency 'factory_girl'
  gem.add_development_dependency 'kt-paperclip'
  gem.add_development_dependency 'rspec', '~> 3.5'
  gem.add_development_dependency 'rubocop'
  gem.add_development_dependency 'simplecov'
end
