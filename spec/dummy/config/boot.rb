unless defined?(BOOTSY_ORM)
  BOOTSY_ORM = (ENV["BOOTSY_ORM"] || :mongoid).to_sym
end

require 'rubygems'
gemfile = File.expand_path('../../../../Gemfile', __FILE__)

if File.exist?(gemfile)
  ENV['BUNDLE_GEMFILE'] = gemfile
  require 'bundler'
  Bundler.setup
end

$:.unshift File.expand_path('../../../../lib', __FILE__)