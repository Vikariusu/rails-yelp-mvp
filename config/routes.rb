Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :restaurants, only: [:index, :create, :show, :new, :destroy] do
    resources :reviews, only: [:new, :create, :destroy]
  end





  # # a visitor can display restaurants
  # get "restaurants", to: "restaurants#index"
  # # a visitor can create a new restaurant
  # post "restaurants", to: "restaurants#create"
  # # get a form to create a new restaurant
  # get "restaurants/new", to: "restaurants#new"
  # # display a restaurant with given id
  # get "restaurants/:id", to: "restaurants#show", as: "restaurant"
end
