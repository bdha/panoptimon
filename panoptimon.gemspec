# -*- encoding: utf-8 -*-
require File.expand_path('../lib/panoptimon/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Eric Wilhelm"]
  gem.description   = %q{The All-Seeing System Monitor Daemon}
  gem.summary       = %q{Panoptimon collects and routes system metrics.}

  gem.email         = "sysops@sourcefire.com"
  gem.homepage      = "https://github.com/synthesist/panoptimon"

  gem.license       = 'bsd' # The (three-clause) BSD License

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "panoptimon"
  gem.require_paths = ["lib"]
  gem.version       = Panoptimon::VERSION
  gem.required_ruby_version = '>= 1.9'
  # Core gem dependencies
  gem.add_dependency 'eventmachine', '~> 1.0.0'
  gem.add_dependency 'daemons'
  gem.add_dependency 'json'
  gem.add_dependency 'thin', '~> 1.5.0'

  # Plugin gem dependencies
  gem.add_dependency 'riemann-client'
end
