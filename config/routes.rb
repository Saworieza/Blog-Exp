Blog:: Application.routes.draw do 
  get 'home/index'

  devise_for :users
  resources :articles do
  	resources :comments
  end

  root 'home#index'
  
end