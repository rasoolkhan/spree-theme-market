Rails.application.routes.draw do

  resources :items, :only => [:index]
  
  namespace :admin do
    resources :items   
  end
end
