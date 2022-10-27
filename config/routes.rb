Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  
  get 'merchants/:merchant_id/items', to: 'merchants#items'
  resources :merchants, only: %i[index show]
  resources :items, only: %i[index show]
end
