Bucketlist::Application.routes.draw do
  match '/auth/:provider/callback' => 'authentications#create'
  match '/signout' => 'authentications#signout', :as => :signout
  match '/styles' => 'welcome#styles'
  resources :experiences do
    member do
      post 'vote'
    end
    resources :reviews
  end
  root :to => 'welcome#index'
end
