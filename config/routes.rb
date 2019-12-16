Rails.application.routes.draw do
  get '/books', to: 'books#index'
  get "/authors/:author_id", to: "authors#show"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books, only: :index
  resources :authors, only: :show do
    resources :books, only: [:new, :create]
  end
end
