Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index', as: 'root'

  get '/handsets', to: 'home#handsets', as: 'handsets'
  get '/prepay', to: 'home#prepay', as: 'prepay'
  get '/subscriptions', to: 'home#subscriptions', as: 'subscriptions'
end
