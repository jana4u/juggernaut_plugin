# -*- encoding: utf-8 -*-
require File.expand_path('../lib/juggernaut_plugin/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Alex MacCaw", "Jana Dvorakova"]
  gem.email         = ["info@alexmaccaw.co.uk", "jana.dvorakova@kraxnet.cz"]
  gem.description   = %q{juggernaut_plugin as gem plugin}
  gem.summary       = %q{juggernaut_plugin as gem plugin}
  gem.homepage      = "https://github.com/jana4u/juggernaut_plugin"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "juggernaut_plugin"
  gem.require_paths = ["lib"]
  gem.version       = JuggernautPlugin::VERSION
  gem.add_runtime_dependency('juggernaut', '~> 0.5.8')
end
