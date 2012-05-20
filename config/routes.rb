Bucketlist::Application.routes.draw do
  match '/auth/:provider/callback' => 'authentications#create'
  match '/styles' => 'welcome#styles'
  resources :experiences
  root :to => 'welcome#index'
end
