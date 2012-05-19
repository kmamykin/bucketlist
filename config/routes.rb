Bucketlist::Application.routes.draw do
  match '/auth/:provider/callback' => 'authentications#create'
  root :to => 'welcome#index'
end
