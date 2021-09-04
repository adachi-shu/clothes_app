Rails.application.routes.draw do
  devise_for :users
  resources :articles
  root "articles#index"
  post 'articles/:id' => 'articles#show'
end