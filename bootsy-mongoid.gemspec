$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bootsy/mongoid/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bootsy-mongoid"
  s.version     = Bootsy::Mongoid::VERSION
  s.authors     = ["Volmer Soares"]
  s.email       = ["lrvolmer@gmail.com"]
  s.homepage    = "http://github.com/volmer/bootsy-mongoid"
  s.summary     = "Mongoid support for Bootsy"
  s.description = "Mongoid support for Bootsy."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "bootsy"
  s.add_dependency "mongoid"
  #s.add_dependency "carrierwave-mongoid"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "database_cleaner"
end
