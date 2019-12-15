Rails.application.routes.draw do
  get '/books', to: 'books#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :books, only: :index
  resources :authors, only: :show do
    resources :books, only: [:new, :create]
  end
end
