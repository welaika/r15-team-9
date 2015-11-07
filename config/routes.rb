Rails.application.routes.draw do
  match "/websocket", to: ActionCable.server, via: [:get, :post]

  resources :matches

  get '/auth/:provider/callback' => 'sessions#create'
  get '/signin' => 'sessions#new', as: :signin
  get '/signout' => 'sessions#destroy', as: :signout
  get '/auth/failure' => 'sessions#failure'
end
