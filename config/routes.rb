Rails.application.routes.draw do
  root 'trips#index'

 # Nested routes
  resources :trips do
    resources :locations do
      resources :addresses
    end
  end


end
