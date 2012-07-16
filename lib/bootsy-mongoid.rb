require 'mongoid'
require 'bootsy'
require 'carrierwave/mongoid'



#module Bootsy
  class Bootsy::Image
    include Mongoid::Document
    include Mongoid::Timestamps

    belongs_to :image_gallery

    #mount_uploader :image_file, Bootsy::ImageUploader

    attr_accessible :image_file

    validates_presence_of :image_file, :image_gallery_id
  end

  class Bootsy::ImageGallery
    include Mongoid::Document
    include Mongoid::Timestamps
    
    belongs_to :bootsy_resource, polymorphic: true
    has_many :images, dependent: :destroy
  end
#end

require 'bootsy/mongoid/railtie'