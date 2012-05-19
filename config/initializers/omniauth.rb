Rails.application.config.middleware.use OmniAuth::Builder do
  #provider :twitter, 'lQ9sCHktasDn47QK2oZXg', 'NhV0BkkK4u3tD1zeNoHnPI4bOBOmNpip7Wdw6aMgnY' # production
  provider :twitter, 'DtsaSGt35L6npnjMsQgw', '2lRyt2B99kI1PHnc0SFrFCqWPkd7GKweFvPRP9EiX0A'
  #provider :facebook, '390672117650826', 'd6cd06cab547c791223c604fade27d80' # bucketlist.travel
  provider :facebook, '389644724419703', '6ffecf566915f6baeffece32ecb62f6d' # bucketlist.dev
end