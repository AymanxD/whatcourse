Rails.application.routes.draw do
  root 'startup#login'

  get 'startup/registration'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#homepage'
  
  resources :users, only: [:new, :create]

  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  get '/signout' => 'sessions#destroy'
end
