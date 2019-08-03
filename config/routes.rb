Rails.application.routes.draw do
  resources :categories
  devise_for :users
  root "dashboard#index"

  resources :expenses, only: [:index]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
