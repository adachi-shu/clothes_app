Rails.application.routes.draw do
  # ↓これ最強
  get "articles/:id/delete" => 'articles#delete', as:'articles_delete'
  devise_for :users
  resources :articles
  root "articles#index"
  post 'articles/:id' => 'articles#show'
end