$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'cachers/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'cachers'
  s.version     = Cachers::VERSION
  s.authors     = ['mmontossi']
  s.email       = ['mmontossi@buyin.io']
  s.homepage    = 'https://github.com/mmontossi/cachers'
  s.summary     = 'Cachers for rails'
  s.description = 'Extracts models cache logic into separate classes in rails.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.required_ruby_version = '>= 2.1.0'

  s.add_dependency 'rails', ['>= 4.0.0', '< 4.3.0']

  #s.add_development_dependency 'mocha', '~> 1.1'
  s.add_development_dependency 'pg', '~> 0.18'
  s.add_development_dependency 'redis', '~> 3.2'
end
