$:.push File.expand_path("../lib", __FILE__)

require "bootsy/mongoid/version"

Gem::Specification.new do |s|
  s.name        = "bootsy-mongoid"
  s.version     = Bootsy::Mongoid::VERSION
  s.authors     = ["Volmer Soares"]
  s.email       = ["lrvolmer@gmail.com"]
  s.homepage    = "http://github.com/volmer/bootsy-mongoid"
  s.summary     = "Mongoid support for Bootsy"
  s.description = "Bootsy-mongoid adds support for Mongoid to Bootsy. If your Rails project uses Mongoid, please add this gem instead the original Bootsy."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "bootsy"
  s.add_dependency "mongoid"
  #s.add_dependency "carrierwave-mongoid"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "factory_girl_rails"
  s.add_development_dependency "database_cleaner"
end
