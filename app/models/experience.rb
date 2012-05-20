class Experience
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip

  has_mongoid_attached_file :image
  field :title, type: String
  field :description, type: String

end