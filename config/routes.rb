Rails.application.routes.draw do

  root to: "flights#index"

  resources :flights, only: [:index, :show]
end
