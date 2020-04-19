Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # root 'pages#home'
  root 'signups#index', as: 'home'
  post '/about' => 'pages#about'
  # post '/all_posts' => 'posts#index'
  resources :signups
end
