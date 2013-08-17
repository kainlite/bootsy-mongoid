ENV["RAILS_ENV"] = "test"

require 'coveralls'
Coveralls.wear!

require File.expand_path("../dummy/config/environment.rb",  __FILE__)

require 'rspec/rails'
require 'factory_girl_rails'
require 'database_cleaner'
require 'mongoid-rspec'

RSpec.configure do |config|
  config.include Mongoid::Matchers

  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
    DatabaseCleaner.clean_with :truncation
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end