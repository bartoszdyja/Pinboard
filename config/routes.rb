Rails.application.routes.draw do
resources :pins
get 'titles', to: 'pins#titles'
get 'destroy', to: 'pins#destroy'
root 'pins#index'
end
