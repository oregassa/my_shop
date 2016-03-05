Rails.application.routes.draw do
  root                         'pages#home'
  get 'about' =>               'pages#about'
  get 'shoppingcart' =>        'shoppingcart#index'
  get '/shoppingcart/clear' => 'shoppingcart#clear_cart'
  get '/shoppingcart/:id' =>   'shoppingcart#add'
  resources  :products
  devise_for :users
end
