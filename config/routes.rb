Rails.application.routes.draw do
  resources :articles
  root "articles#index"
  post 'articles/:id' => 'articles#show'
end