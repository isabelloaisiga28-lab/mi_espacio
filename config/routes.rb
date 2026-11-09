Rails.application.routes.draw do

  root "paginas#inicio"

  resources :posts

  resources :users, only: [:new, :create]

  resource :session
  resources :passwords, param: :token

  get "up" => "rails/health#show",
    as: :rails_health_check

end
