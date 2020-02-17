Rails.application.routes.draw do
  resources :stocks
  resources :portfolios
  resources :investors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
