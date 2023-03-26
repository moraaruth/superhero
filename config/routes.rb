Rails.application.routes.draw do
  resources :hero_powers, only: [:create]
  resources :powers, only: [:index]
  resources :heros, only: [:index, :show]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # get 'heros', to: 'heros#index'
  # get '/heros/:id', to: 'heros#show'
end
