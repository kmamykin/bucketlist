class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongo::Voter

  #attr_accessible :id, :picture_url, :provider, :uid

  field :name, type: String
  field :picture_url, type: String
  field :provider, type: String
  field :uid, type: String

  def self.find_or_create_by_provider_and_uid(auth)
    user = User.where(:provider => auth['provider'], :uid => auth['uid']).first
    user ||= User.create(auth.slice('provider', 'uid', 'info'))
    user
  end
end
