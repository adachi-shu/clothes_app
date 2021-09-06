Rails.application.routes.draw do
  get "articles/delete"
  devise_for :users
  resources :articles
  root "articles#index"
  post 'articles/:id' => 'articles#show'
end