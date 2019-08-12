Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :users do
    get :me
    post :login
  end
    
  resources :tweets
end
