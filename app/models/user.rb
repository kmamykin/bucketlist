class User
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongo::Voter

  field :provider, type: String
  field :uid, type: String
  field :info, type: Hash

  def name
    self.info['name']
  end

  def picture_url
    self.info['image']
  end

  def self.find_or_create_by_provider_and_uid(auth)
    user = User.where(:provider => auth['provider'], :uid => auth['uid']).first
    user ||= User.create(auth.slice('provider', 'uid', 'info'))
    user
  end
end
