Rails.application.routes.draw do
  resources :apis
  resources :stocks
  resources :portfolios
  resources :investors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  post '/login', to: 'investors#login'
  get '/validate', to: 'investors#validate'
  # get '/fetchinvestorporfolio', to: 'fetchinvestorportfolio'


end
