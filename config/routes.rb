Rails.application.routes.draw do
  root                    'pages#home'
  get 'shoppingcart', to: 'shoppingcart#index'
  get 'about', to:        'pages#about'
  resources  :products
  devise_for :users
end
