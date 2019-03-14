Rails.application.routes.draw do
  root 'licenses#index'
  resources :licenses
end