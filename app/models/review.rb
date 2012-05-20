class Review
  include Mongoid::Document
  include Mongoid::Paperclip
  include Mongo::Voteable

  embedded_in :experience
  voteable self, :up => +1, :down => -1
  voteable Experience, :up => +2, :down => -1

  belongs_to :user
  field :text, type: String
  has_mongoid_attached_file :image,
                            :storage        => :s3,
                            :s3_credentials => {access_key_id: ENV['S3_ACCESS_KEY_ID'], secret_access_key: ENV['S3_SECRET_ACCESS_KEY']},
                            :bucket         => 'uploads-bucketlist'
end