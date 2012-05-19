Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :twitter, 'lQ9sCHktasDn47QK2oZXg', 'NhV0BkkK4u3tD1zeNoHnPI4bOBOmNpip7Wdw6aMgnY' # production
  provider :twitter, 'DtsaSGt35L6npnjMsQgw', '2lRyt2B99kI1PHnc0SFrFCqWPkd7GKweFvPRP9EiX0A'
  provider :facebook, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end