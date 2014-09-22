Rails.application.routes.draw do

  resources :items, :only => [:index]
  
  namespace :admin do
    resources :items   
  end
  
  resources :users
  
  # get 'login', to: 'sessions#new', as: :login
  
end
