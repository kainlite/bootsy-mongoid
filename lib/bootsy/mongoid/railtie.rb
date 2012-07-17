module Bootsy
  module Mongoid
    class Railtie < Rails::Railtie
      config.after_initialize do
        Dir[File.expand_path('../models/*.rb', __FILE__)].each {|f| require f }
      end
    end
  end
end