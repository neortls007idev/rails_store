Rails.application.routes.draw do
  devise_for :users
 # devise_for :users
  resources :products


  resource :cart, only: [ :show ] do
    post "add", path: "add/:id"
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'products#index'
end
