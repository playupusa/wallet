Gem::Specification.new do |s|
  # METADATA
  s.name        = "wallet"
  s.version     = File.read "VERSION"
  s.summary     = "Simple action-cache configuration management for Rails 3."
  s.description = "A simple DSL for configuring action caching inside your rails app."
  s.authors     = "Matt Parker"
  s.email       = "moonmaster9000@gmail.com"
  s.homepage    = "http://github.com/moonmaster9000/wallet"
  
  # FILES PACKAGED WITH THIS GEM
  s.files       = Dir.glob("lib/**/*") << "readme.markdown" << "wallet.gemspec"
  s.test_files  = Dir.glob "features/**/*"

  # DEPENDENCIES
  s.add_dependency "rails", "~> 3.0"
  s.add_development_dependency "cucumber",  "~> 0.10"
  s.add_development_dependency "rspec",     "~> 2.0"
end
