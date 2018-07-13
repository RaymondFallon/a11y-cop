Gem::Specification.new do |s|
  s.name          = 'a11y-cop'
  s.version       = '0.0.0'
  s.date          = '2018-07-13'
  s.summary       = 'Accessibility Testing Using Rubocop'
  s.description   = "This gem consists of custom rubocop 'Cops' that check for accessibility violations"
  s.authors       = ['Ray Fallon']
  s.email         = 'raymondfallon@gmail.com'
  # TODO: What is this files thing asking...?
  s.files         = Dir[
                      '{config,lib,spec}/**/*',
                      '*.md',
                      '*.gemspec',
                      'Gemfile',
                      'Rakefile'
                    ]
  s.bindir        = "exe"
  s.executables   = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]
  s.homepage      = 'https://github.com/RaymondFallon/a11y-cop'
  s.license       = 'MIT'

  s.add_runtime_dependency 'rubocop'
  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'

end