class Bootsy::ImageGallery
  include Mongoid::Document
  include Mongoid::Timestamps

  
  belongs_to :bootsy_resource, polymorphic: true
  has_many :images, dependent: :destroy
end
