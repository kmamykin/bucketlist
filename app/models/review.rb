class Review
  include Mongoid::Document
  include Mongo::Voteable

  embedded_in :experience
  voteable self, :up => +1, :down => -1
  voteable Experience, :up => +2, :down => -1

  belongs_to :user
  field :title, type: String
  field :text, type: String
end