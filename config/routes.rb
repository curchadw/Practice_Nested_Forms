Rails.application.routes.draw do
  
  resources :flights
  resources :pilots
  resources :passengers

end
