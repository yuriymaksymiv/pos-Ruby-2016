Rails.application.routes.draw do
root 'clients#index'


resources :clients
get 'clients/index'
devise_for :users



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
