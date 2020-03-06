Rails.application.routes.draw do
  
  get 'posts/index'
  root to: 'pages#home'
  get '/salut(/:name)',  to: 'pages#salut', as: 'salut'
  get '/boongle',  to: 'pages#boongle'
  resources :posts
  resources :categories

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
