Rails.application.routes.draw do
  get 'users/new'
  root to: "pages#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/help" => "pages#help"
  resources :users
end
