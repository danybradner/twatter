Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  get '/users/me', to: 'users#me'

  resources :users do
    patch :login
  end

  
  resources :tweets
end
