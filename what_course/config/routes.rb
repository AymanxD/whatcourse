Rails.application.routes.draw do
  root 'startup#login'

  get 'startup/registration'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
