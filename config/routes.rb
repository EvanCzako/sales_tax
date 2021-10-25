Rails.application.routes.draw do
  
  root 'baskets#index'

  resources :baskets
  resources :items

end
