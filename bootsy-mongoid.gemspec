$:.push File.expand_path("../lib", __FILE__)

require "bootsy/mongoid/version"

Gem::Specification.new do |s|
  s.name        = "bootsy-mongoid"
  s.version     = Bootsy::Mongoid::VERSION
  s.authors     = ["Volmer Soares"]
  s.email       = ["volmerius@gmail.com"]
  s.homepage    = "http://github.com/volmer/bootsy-mongoid"
  s.summary     = "Mongoid support for Bootsy"
  s.description = "Mongoid support for Bootsy"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "bootsy", "~> 0.1.8"
  s.add_dependency "mongoid", "~> 3.1"
  s.add_dependency "carrierwave-mongoid", "~> 0.4.0"

  s.add_development_dependency "sqlite3", "~> 1.3"
  s.add_development_dependency "rspec-rails", "~> 2.12"
  s.add_development_dependency "factory_girl_rails", "~> 4.2"
  s.add_development_dependency "database_cleaner", "~> 0.9"
end
