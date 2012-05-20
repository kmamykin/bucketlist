class Experience
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Paperclip
  include Mongo::Voteable

  # set points for each vote
  voteable self, :up => +1, :down => -1

  has_mongoid_attached_file :image,
                            :storage        => :s3,
                            :s3_credentials => {access_key_id: ENV['S3_ACCESS_KEY_ID'], secret_access_key: ENV['S3_SECRET_ACCESS_KEY']},
                            :bucket         => 'uploads-bucketlist'
  field :title, type: String
  field :url, type: String
  field :description, type: String

  embeds_many :reviews
  belongs_to :user
end