Rails.application.routes.draw do
  devise_for :users
resources :pins
get 'titles', to: 'pins#titles'
get 'destroy', to: 'pins#destroy'
root 'pins#index'
end
