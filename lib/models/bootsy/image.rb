require 'mongoid'

module Bootsy
  class Image
    #include Mongoid::Document
    #include Mongoid::Timestamps

    #belongs_to :image_gallery

    #mount_uploader :image_file, ImageUploader

    #attr_accessible :image_file

    #validates_presence_of :image_file, :image_gallery_id
  end
end
