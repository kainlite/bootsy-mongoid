module Bootsy
  module Mongoid
    class Railtie < Rails::Railtie
      initializer 'bootsy.configure_mongoid_support' do
        Bootsy::Image.send :mount_uploader, :image_file, Bootsy::ImageUploader
      end
    end
  end
end