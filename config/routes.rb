Rails.application.routes.draw do
  root 'home#index'
  get 'home/:id' => 'home#show'
  get 'sign_in' => 'sessions#new', as: :sign_in
  post 'sign_in' => 'sessions#create'
  delete 'sign_in' => 'sessions#delete', as: :sign_out

  get "/users/new" => 'users#new', as: :sign_up
  post "/users" => 'users#create', as: :users

end
