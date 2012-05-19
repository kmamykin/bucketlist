Bucketlist::Application.routes.draw do
  match '/auth/:provider/callback' => 'authentications#create'
  resources :experiences
  root :to => 'welcome#index'
end
