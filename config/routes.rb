Rails.application.routes.draw do
  # get 'welcome/index'
  # get 'posts#index'
  root 'posts#index', as: 'home'
  get 'about' => 'pages#about', as: 'about'

  # for posts creating a post method
  resources :posts do
    resources :comments
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
