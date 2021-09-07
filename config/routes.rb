# config/routes.rb
Rails.application.routes.draw do
  resources :users, param: :_username
  post '/signin', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
end
