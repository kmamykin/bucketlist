class Experience
  include Mongoid::Document
  include Mongoid::Timestamps

  field :title, type: String
  field :description, type: String

end