Rails.application.routes.draw do
  resources :cinamas_films
  resources :cinemas
  resources :films
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
