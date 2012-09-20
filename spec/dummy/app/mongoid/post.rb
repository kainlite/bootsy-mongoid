class Post
  include Mongoid::Document
  include Mongoid::Timestamps
  include Bootsy::Container

  field :title, type: String
  field :content, type: String

  attr_accessible :content, :title

  has_many :comments, dependent: :destroy

  validates_presence_of :title, :content
end
