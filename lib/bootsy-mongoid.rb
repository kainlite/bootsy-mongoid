require 'mongoid'
require 'carrierwave/mongoid'
require 'bootsy'
require 'bootsy/mongoid/railtie'

BOOTSY_ORM = :mongoid unless defined?(BOOTSY_ORM)