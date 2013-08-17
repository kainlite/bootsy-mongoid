class Comment
  include Mongoid::Document
  include Mongoid::Timestamps
  
  field :author, type: String
  field :content, type: String

  belongs_to :post
  attr_accessible :author, :content

  validates_presence_of :author, :content
end
