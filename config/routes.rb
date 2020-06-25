# frozen_string_literal: true

Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/login', to: 'auth#login'
  post '/sign_up', to: 'auth#sign_up'
  get 'profile', to: 'users#show'
  resources :expenses, :users, :incomes, :categories, only: [:show, :index, :update, :destroy, :create]
end
